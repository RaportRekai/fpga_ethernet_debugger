`timescale 1ns / 1ps
`default_nettype none

module sync_fifo #(
    parameter FIFO_DEPTH = 1024,
    parameter AXIS_ETH_DATA_WIDTH = 64,
    parameter AXIS_ETH_KEEP_WIDTH = AXIS_ETH_DATA_WIDTH/8,
    parameter AXIS_ETH_TX_USER_WIDTH = 17,
    parameter AXIS_ETH_RX_USER_WIDTH = 1
)(
    // source / write side
    input  wire                                     s_clk,
    input  wire                                     s_rst,

    input  wire [AXIS_ETH_DATA_WIDTH-1:0]           s_axis_tdata,
    input  wire [AXIS_ETH_KEEP_WIDTH-1:0]           s_axis_tkeep,
    input  wire                                     s_axis_tvalid,
    output wire                                     s_axis_tready,
    input  wire                                     s_axis_tlast,
    input  wire [AXIS_ETH_RX_USER_WIDTH-1:0]        s_axis_tuser,   // intentionally unused

    // sink / read side
    input  wire                                     m_clk,
    input  wire                                     m_rst,

    output wire [AXIS_ETH_DATA_WIDTH-1:0]           m_axis_tdata,
    output wire [AXIS_ETH_KEEP_WIDTH-1:0]           m_axis_tkeep,
    output wire                                     m_axis_tvalid,
    input  wire                                     m_axis_tready,
    output wire                                     m_axis_tlast,
    output wire [AXIS_ETH_TX_USER_WIDTH-1:0]        m_axis_tuser
);

localparam ADDR_W = $clog2(FIFO_DEPTH);
localparam PTR_W  = ADDR_W + 1;

// Store only tlast, tkeep, tdata.
// Do not carry tuser through the FIFO.
localparam FIFO_W = 1 + AXIS_ETH_KEEP_WIDTH + AXIS_ETH_DATA_WIDTH;

// DEPTH must be power of 2 and >= 4
initial begin
    if (FIFO_DEPTH < 4) begin
        $error("sync_fifo: FIFO_DEPTH must be >= 4");
    end
    if ((1 << ADDR_W) != FIFO_DEPTH) begin
        $error("sync_fifo: FIFO_DEPTH must be a power of 2");
    end
end

// storage
reg [FIFO_W-1:0] mem[0:FIFO_DEPTH-1];

// pointers
reg [PTR_W-1:0] wptr_bin_reg  = {PTR_W{1'b0}};
reg [PTR_W-1:0] wptr_gray_reg = {PTR_W{1'b0}};
reg [PTR_W-1:0] rptr_bin_reg  = {PTR_W{1'b0}};
reg [PTR_W-1:0] rptr_gray_reg = {PTR_W{1'b0}};

// synchronized gray pointers
reg [PTR_W-1:0] rptr_gray_sync1_reg = {PTR_W{1'b0}};
reg [PTR_W-1:0] rptr_gray_sync2_reg = {PTR_W{1'b0}};
reg [PTR_W-1:0] wptr_gray_sync1_reg = {PTR_W{1'b0}};
reg [PTR_W-1:0] wptr_gray_sync2_reg = {PTR_W{1'b0}};

// status
reg wfull_reg  = 1'b0;
reg rempty_reg = 1'b1;

// -------------------------
// helper: binary -> gray
// -------------------------
function [PTR_W-1:0] bin2gray;
    input [PTR_W-1:0] bin;
    begin
        bin2gray = (bin >> 1) ^ bin;
    end
endfunction

// -------------------------
// write side
// -------------------------
wire [PTR_W-1:0] wptr_bin_next;
wire [PTR_W-1:0] wptr_gray_next;
wire             wfull_next;
wire             write_en;

assign s_axis_tready = ~wfull_reg;
assign write_en      = s_axis_tvalid && s_axis_tready;

assign wptr_bin_next  = wptr_bin_reg + (write_en ? {{PTR_W-1{1'b0}}, 1'b1} : {PTR_W{1'b0}});
assign wptr_gray_next = bin2gray(wptr_bin_next);

// full when next write pointer equals synchronized read pointer
// with top two bits inverted
assign wfull_next =
    (wptr_gray_next == {~rptr_gray_sync2_reg[PTR_W-1:PTR_W-2],
                         rptr_gray_sync2_reg[PTR_W-3:0]});

always @(posedge s_clk) begin
    if (s_rst) begin
        rptr_gray_sync1_reg <= {PTR_W{1'b0}};
        rptr_gray_sync2_reg <= {PTR_W{1'b0}};
        wptr_bin_reg        <= {PTR_W{1'b0}};
        wptr_gray_reg       <= {PTR_W{1'b0}};
        wfull_reg           <= 1'b0;
    end else begin
        // synchronize read pointer into write clock domain
        rptr_gray_sync1_reg <= rptr_gray_reg;
        rptr_gray_sync2_reg <= rptr_gray_sync1_reg;

        // write payload
        if (write_en) begin
            mem[wptr_bin_reg[ADDR_W-1:0]] <= {s_axis_tlast, s_axis_tkeep, s_axis_tdata};
        end

        // advance write pointer
        wptr_bin_reg  <= wptr_bin_next;
        wptr_gray_reg <= wptr_gray_next;
        wfull_reg     <= wfull_next;
    end
end

// -------------------------
// read side
// -------------------------
wire [PTR_W-1:0] rptr_bin_next;
wire [PTR_W-1:0] rptr_gray_next;
wire             rempty_next;
wire             read_en;

wire [FIFO_W-1:0] rd_word;

assign m_axis_tvalid = ~rempty_reg;
assign read_en       = m_axis_tvalid && m_axis_tready;

assign rptr_bin_next  = rptr_bin_reg + (read_en ? {{PTR_W-1{1'b0}}, 1'b1} : {PTR_W{1'b0}});
assign rptr_gray_next = bin2gray(rptr_bin_next);

assign rempty_next = (rptr_gray_next == wptr_gray_sync2_reg);

// show-ahead read
assign rd_word = mem[rptr_bin_reg[ADDR_W-1:0]];

assign m_axis_tdata = m_axis_tvalid ? rd_word[AXIS_ETH_DATA_WIDTH-1:0] : {AXIS_ETH_DATA_WIDTH{1'b0}};
assign m_axis_tkeep = m_axis_tvalid ? rd_word[AXIS_ETH_DATA_WIDTH + AXIS_ETH_KEEP_WIDTH - 1 : AXIS_ETH_DATA_WIDTH]
                                    : {AXIS_ETH_KEEP_WIDTH{1'b0}};
assign m_axis_tlast = m_axis_tvalid ? rd_word[FIFO_W-1] : 1'b0;

// Tie TX-side tuser to zero
assign m_axis_tuser = {AXIS_ETH_TX_USER_WIDTH{1'b0}};

always @(posedge m_clk) begin
    if (m_rst) begin
        wptr_gray_sync1_reg <= {PTR_W{1'b0}};
        wptr_gray_sync2_reg <= {PTR_W{1'b0}};
        rptr_bin_reg        <= {PTR_W{1'b0}};
        rptr_gray_reg       <= {PTR_W{1'b0}};
        rempty_reg          <= 1'b1;
    end else begin
        // synchronize write pointer into read clock domain
        wptr_gray_sync1_reg <= wptr_gray_reg;
        wptr_gray_sync2_reg <= wptr_gray_sync1_reg;

        // advance read pointer only on handshake
        rptr_bin_reg  <= rptr_bin_next;
        rptr_gray_reg <= rptr_gray_next;
        rempty_reg    <= rempty_next;
    end
end

endmodule

`default_nettype wire