`timescale 1ns / 1ps

module packet_store_forward_with_depth #(
    parameter DATA_WIDTH       = 64,
    parameter KEEP_WIDTH       = (DATA_WIDTH/8),
    parameter RX_USER_WIDTH    = 1,

    // Beat-data ring depth (number of 64-bit beats stored)
    parameter DATA_MEM_DEPTH   = 2048,

    // Number of packet descriptors that can be queued
    parameter DESC_MEM_DEPTH   = 16
)(
    input  wire                        clk,
    input  wire                        rst,

    input  wire [1:0]                  s_start_packet,
    input  wire [DATA_WIDTH-1:0]       s_axis_tdata,
    input  wire [KEEP_WIDTH-1:0]       s_axis_tkeep,
    input  wire                        s_axis_tvalid,
    input  wire                        s_axis_tlast,
    input  wire [RX_USER_WIDTH-1:0]    s_axis_tuser,

    output reg  [1:0]                  m_start_packet,
    output reg  [DATA_WIDTH-1:0]       m_axis_tdata,
    output reg  [KEEP_WIDTH-1:0]       m_axis_tkeep,
    output reg                         m_axis_tvalid,
    output reg                         m_axis_tlast,
    output reg  [RX_USER_WIDTH-1:0]    m_axis_tuser
);

localparam DATA_PTR_W = $clog2(DATA_MEM_DEPTH);
localparam DESC_PTR_W = $clog2(DESC_MEM_DEPTH);
localparam LEN_W      = $clog2(DATA_MEM_DEPTH+1);

// -----------------------------------------------------------------------------
// Beat-data ring buffer
// -----------------------------------------------------------------------------
reg [DATA_WIDTH-1:0]    data_mem [0:DATA_MEM_DEPTH-1];
reg [KEEP_WIDTH-1:0]    keep_mem [0:DATA_MEM_DEPTH-1];
reg [RX_USER_WIDTH-1:0] user_mem [0:DATA_MEM_DEPTH-1];

// -----------------------------------------------------------------------------
// Descriptor ring buffer
// Each descriptor describes one complete packet.
// -----------------------------------------------------------------------------
reg [DATA_PTR_W-1:0] desc_start_mem [0:DESC_MEM_DEPTH-1];
reg [LEN_W-1:0]      desc_len_mem   [0:DESC_MEM_DEPTH-1];

// -----------------------------------------------------------------------------
// Write-side state
// -----------------------------------------------------------------------------
reg [DATA_PTR_W-1:0] data_wr_ptr;
reg [LEN_W:0]        data_used_beats;

reg                  capturing_packet;
reg                  drop_packet;

reg [DATA_PTR_W-1:0] cur_pkt_start_ptr;
reg [LEN_W-1:0]      cur_pkt_len;

// -----------------------------------------------------------------------------
// Descriptor FIFO state
// -----------------------------------------------------------------------------
reg [DESC_PTR_W-1:0] desc_wr_ptr;
reg [DESC_PTR_W-1:0] desc_rd_ptr;
reg [DESC_PTR_W:0]   desc_count;

// -----------------------------------------------------------------------------
// Replay state
// -----------------------------------------------------------------------------
reg                  tx_active;
reg [DATA_PTR_W-1:0] tx_rd_ptr;
reg [LEN_W-1:0]      tx_len;
reg [LEN_W-1:0]      tx_index;

// -----------------------------------------------------------------------------
// Helpers
// -----------------------------------------------------------------------------
function [DATA_PTR_W-1:0] data_ptr_inc;
    input [DATA_PTR_W-1:0] ptr;
    begin
        if (ptr == DATA_MEM_DEPTH-1)
            data_ptr_inc = {DATA_PTR_W{1'b0}};
        else
            data_ptr_inc = ptr + 1'b1;
    end
endfunction

function [DESC_PTR_W-1:0] desc_ptr_inc;
    input [DESC_PTR_W-1:0] ptr;
    begin
        if (ptr == DESC_MEM_DEPTH-1)
            desc_ptr_inc = {DESC_PTR_W{1'b0}};
        else
            desc_ptr_inc = ptr + 1'b1;
    end
endfunction

wire desc_full  = (desc_count == DESC_MEM_DEPTH);
wire desc_empty = (desc_count == 0);
wire data_full  = (data_used_beats == DATA_MEM_DEPTH);

// -----------------------------------------------------------------------------
// Main logic
// -----------------------------------------------------------------------------
always @(posedge clk) begin
    if (rst) begin
        data_wr_ptr        <= {DATA_PTR_W{1'b0}};
        data_used_beats    <= {(LEN_W+1){1'b0}};

        capturing_packet   <= 1'b0;
        drop_packet        <= 1'b0;
        cur_pkt_start_ptr  <= {DATA_PTR_W{1'b0}};
        cur_pkt_len        <= {LEN_W{1'b0}};

        desc_wr_ptr        <= {DESC_PTR_W{1'b0}};
        desc_rd_ptr        <= {DESC_PTR_W{1'b0}};
        desc_count         <= {(DESC_PTR_W+1){1'b0}};

        tx_active          <= 1'b0;
        tx_rd_ptr          <= {DATA_PTR_W{1'b0}};
        tx_len             <= {LEN_W{1'b0}};
        tx_index           <= {LEN_W{1'b0}};

        m_start_packet     <= 2'b00;
        m_axis_tdata       <= {DATA_WIDTH{1'b0}};
        m_axis_tkeep       <= {KEEP_WIDTH{1'b0}};
        m_axis_tvalid      <= 1'b0;
        m_axis_tlast       <= 1'b0;
        m_axis_tuser       <= {RX_USER_WIDTH{1'b0}};
    end else begin
        // ---------------------------------------------------------------------
        // Default output each cycle
        // ---------------------------------------------------------------------
        m_start_packet <= 2'b00;
        m_axis_tdata   <= {DATA_WIDTH{1'b0}};
        m_axis_tkeep   <= {KEEP_WIDTH{1'b0}};
        m_axis_tvalid  <= 1'b0;
        m_axis_tlast   <= 1'b0;
        m_axis_tuser   <= {RX_USER_WIDTH{1'b0}};

        // ---------------------------------------------------------------------
        // Input capture path
        // ---------------------------------------------------------------------
        if (drop_packet) begin
            // Drop everything until end of current packet
            if (s_axis_tvalid && s_axis_tlast) begin
                drop_packet      <= 1'b0;
                capturing_packet <= 1'b0;
                cur_pkt_len      <= {LEN_W{1'b0}};
            end
        end else begin
            // Start of a new packet
            if (!capturing_packet && s_axis_tvalid && (s_start_packet != 2'b00)) begin
                if (desc_full || data_full) begin
                    // Cannot accept a new packet
                    drop_packet      <= 1'b1;
                    capturing_packet <= 1'b0;
                    cur_pkt_len      <= {LEN_W{1'b0}};
                end else begin
                    capturing_packet  <= 1'b1;
                    cur_pkt_start_ptr <= data_wr_ptr;
                    cur_pkt_len       <= {LEN_W{1'b0}};

                    // Write first beat
                    data_mem[data_wr_ptr] <= s_axis_tdata;
                    keep_mem[data_wr_ptr] <= s_axis_tkeep;
                    user_mem[data_wr_ptr] <= s_axis_tuser;

                    data_wr_ptr     <= data_ptr_inc(data_wr_ptr);
                    data_used_beats <= data_used_beats + 1'b1;
                    cur_pkt_len     <= {{(LEN_W-1){1'b0}}, 1'b1};

                    if (s_axis_tlast) begin
                        // One-beat packet, descriptor completes immediately
                        desc_start_mem[desc_wr_ptr] <= data_wr_ptr;
                        desc_len_mem[desc_wr_ptr]   <= {{(LEN_W-1){1'b0}}, 1'b1};
                        desc_wr_ptr                 <= desc_ptr_inc(desc_wr_ptr);
                        desc_count                  <= desc_count + 1'b1;
                        capturing_packet            <= 1'b0;
                    end
                end
            end
            // Middle / last beat of current packet
            else if (capturing_packet && s_axis_tvalid) begin
                if (data_full) begin
                    // Roll back the partially stored packet logically
                    data_wr_ptr        <= cur_pkt_start_ptr;
                    data_used_beats    <= data_used_beats - cur_pkt_len;
                    capturing_packet   <= 1'b0;
                    cur_pkt_len        <= {LEN_W{1'b0}};
                    drop_packet        <= 1'b1;
                end else begin
                    data_mem[data_wr_ptr] <= s_axis_tdata;
                    keep_mem[data_wr_ptr] <= s_axis_tkeep;
                    user_mem[data_wr_ptr] <= s_axis_tuser;

                    data_wr_ptr     <= data_ptr_inc(data_wr_ptr);
                    data_used_beats <= data_used_beats + 1'b1;
                    cur_pkt_len     <= cur_pkt_len + 1'b1;

                    if (s_axis_tlast) begin
                        // Packet complete, push descriptor
                        desc_start_mem[desc_wr_ptr] <= cur_pkt_start_ptr;
                        desc_len_mem[desc_wr_ptr]   <= cur_pkt_len + 1'b1;
                        desc_wr_ptr                 <= desc_ptr_inc(desc_wr_ptr);
                        desc_count                  <= desc_count + 1'b1;
                        capturing_packet            <= 1'b0;
                    end
                end
            end
        end

        // ---------------------------------------------------------------------
        // Replay engine
        // ---------------------------------------------------------------------
        if (tx_active) begin
            m_axis_tdata  <= data_mem[tx_rd_ptr];
            m_axis_tkeep  <= keep_mem[tx_rd_ptr];
            m_axis_tvalid <= 1'b1;
            m_axis_tuser  <= user_mem[tx_rd_ptr];
            m_start_packet <= (tx_index == 0) ? 2'b01 : 2'b00;

            if (tx_index == tx_len - 1'b1) begin
                m_axis_tlast   <= 1'b1;
                tx_active      <= 1'b0;
                desc_rd_ptr    <= desc_ptr_inc(desc_rd_ptr);
                desc_count     <= desc_count - 1'b1;
                data_used_beats <= data_used_beats - tx_len;
                tx_index       <= {LEN_W{1'b0}};
            end else begin
                m_axis_tlast <= 1'b0;
                tx_rd_ptr    <= data_ptr_inc(tx_rd_ptr);
                tx_index     <= tx_index + 1'b1;
            end
        end else if (!desc_empty) begin
            // Load next completed packet; first beat goes out next cycle
            tx_active <= 1'b1;
            tx_rd_ptr <= desc_start_mem[desc_rd_ptr];
            tx_len    <= desc_len_mem[desc_rd_ptr];
            tx_index  <= {LEN_W{1'b0}};
        end
    end
end

endmodule