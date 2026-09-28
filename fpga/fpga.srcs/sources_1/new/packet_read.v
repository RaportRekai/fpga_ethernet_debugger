`timescale 1ns / 1ps

module packet_read #(
    parameter DATA_WIDTH    = 64,
    parameter KEEP_WIDTH    = (DATA_WIDTH/8),
    parameter RX_USER_WIDTH = 1,
    parameter START_BYTE    = 42  // first UDP payload byte for Eth+IPv4+UDP, no VLAN/options
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

localparam BYTE_CNT_W   = 16;
localparam KEEP_CNT_W   = $clog2(KEEP_WIDTH+1);
localparam BYTE_IDX_W   = (KEEP_WIDTH > 1) ? $clog2(KEEP_WIDTH) : 1;

reg [BYTE_CNT_W-1:0] byte_counter = {BYTE_CNT_W{1'b0}};

reg [KEEP_CNT_W-1:0] valid_bytes;
reg [BYTE_CNT_W-1:0] beat_start;
reg [BYTE_IDX_W-1:0] byte_index_in_beat;
reg [DATA_WIDTH-1:0] modified_tdata;

integer k;

// counts number of 1s in tkeep
function [KEEP_CNT_W-1:0] count_keep;
    input [KEEP_WIDTH-1:0] keep;
    integer j;
    begin
        count_keep = {KEEP_CNT_W{1'b0}};
        for (j = 0; j < KEEP_WIDTH; j = j + 1) begin
            count_keep = count_keep + keep[j];
        end
    end
endfunction

always @(posedge clk) begin
    if (rst) begin
        byte_counter   <= {BYTE_CNT_W{1'b0}};
        m_start_packet <= 2'b00;
        m_axis_tdata   <= {DATA_WIDTH{1'b0}};
        m_axis_tkeep   <= {KEEP_WIDTH{1'b0}};
        m_axis_tvalid  <= 1'b0;
        m_axis_tlast   <= 1'b0;
        m_axis_tuser   <= {RX_USER_WIDTH{1'b0}};
    end else begin
        // registered pass-through
        m_start_packet <= s_start_packet;
        m_axis_tkeep   <= s_axis_tkeep;
        m_axis_tvalid  <= s_axis_tvalid;
        m_axis_tlast   <= s_axis_tlast;
        m_axis_tuser   <= s_axis_tuser;

        // small-width helpers
        valid_bytes   = count_keep(s_axis_tkeep);
        beat_start    = (s_start_packet != 0) ? {BYTE_CNT_W{1'b0}} : byte_counter;
        modified_tdata = s_axis_tdata;
        //capture the checksum bytes
        // overwrite target byte with ASCII 'T' if it falls in this beat

            
        if (s_axis_tvalid &&
            (START_BYTE >= beat_start) &&
            (START_BYTE < beat_start + valid_bytes)) begin

            byte_index_in_beat = START_BYTE - beat_start;
            modified_tdata = s_axis_tdata;
                  
        end

        m_axis_tdata <= modified_tdata;
 

        // byte counter for current frame
        if (s_axis_tvalid) begin
            if (s_axis_tlast) begin
                byte_counter <= {BYTE_CNT_W{1'b0}};
            end else if (s_start_packet != 0) begin
                byte_counter <= valid_bytes;
            end else begin
                byte_counter <= byte_counter + valid_bytes;
            end
        end
    end
end

endmodule