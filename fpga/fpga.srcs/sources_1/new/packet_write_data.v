`timescale 1ns / 1ps

module packet_store_and_forward_data #(
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
reg [7:0]buff_data;
reg buff_keep;
reg start_shift;
reg start_tlast_next;
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
        m_axis_tuser   <= s_axis_tuser;

        // small-width helpers
        valid_bytes   = count_keep(s_axis_tkeep);
        beat_start    = (s_start_packet != 0) ? {BYTE_CNT_W{1'b0}} : byte_counter;
       
        //capture the checksum bytes
        // overwrite target byte with ASCII 'T' if it falls in this beat
        if (start_tlast_next ==1)
        begin
            m_axis_tlast<=1'b1;
            m_axis_tdata<={56'b0,buff_data};
            m_axis_tkeep<={7'b0,buff_keep};
            m_axis_tvalid  <= 1'b1;
            start_tlast_next <=0;
            start_shift      <= 1'b0;
            buff_data        <= 8'd0;
            buff_keep        <= 1'b0;
            
            
        end
        else if (s_axis_tvalid && start_shift == 1 && s_axis_tlast == 1)
        begin
            start_tlast_next <= 1;
            m_axis_tlast<=1'b0;
            m_axis_tdata<={s_axis_tdata[55:0],buff_data};
            m_axis_tkeep<={s_axis_tkeep[6:0],buff_keep};
            m_axis_tvalid  <= 1'b1;
            buff_data <= s_axis_tdata[56+:8];
            buff_keep <= s_axis_tkeep[7];
        end
        else if (s_axis_tvalid && start_shift == 1)
        begin
            m_axis_tlast<=1'b0;
            m_axis_tdata<={s_axis_tdata[55:0],buff_data};
            m_axis_tkeep<={s_axis_tkeep[6:0],buff_keep};
            m_axis_tvalid  <= 1'b1;
            buff_data <= s_axis_tdata[56+:8];
            buff_keep <= s_axis_tkeep[7];
            
        end   
        else if (s_axis_tvalid &&
            (START_BYTE >= beat_start) &&
            (START_BYTE < beat_start + valid_bytes)) begin
            m_axis_tlast<=1'b0;
            buff_data <= s_axis_tdata[56+:8];
            buff_keep <= s_axis_tkeep[7];
            m_axis_tdata <= {s_axis_tdata[55:0],8'h54};
            m_axis_tvalid  <= 1'b1;
            m_axis_tkeep<={s_axis_tkeep[6:0],1'b1};
            
            start_shift <= 1;
     
        end
        else
        begin
            m_axis_tlast<=s_axis_tlast;
            m_axis_tdata<=s_axis_tdata;
            m_axis_tkeep<=s_axis_tkeep;
            m_axis_tvalid  <= s_axis_tvalid;
        end


        // byte counter for current frame
        if (s_axis_tvalid) begin
            if (s_axis_tlast) begin
                byte_counter <= {BYTE_CNT_W{1'b0}};
            end else if (s_start_packet != 0) begin
                byte_counter <= valid_bytes;
                buff_keep <=0;
                buff_data<=8'b0;
                start_tlast_next <=0;
                start_shift<=0;
                      
            end else begin
                byte_counter <= byte_counter + valid_bytes;
            end
        end
    end
end

endmodule