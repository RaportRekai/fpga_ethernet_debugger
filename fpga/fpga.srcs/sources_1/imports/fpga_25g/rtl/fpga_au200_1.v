// SPDX-License-Identifier: BSD-2-Clause-Views
/*
 * Simplified AU200 top-level for bump-in-the-wire operation
 *
 * Keeps:
 *   - 300 MHz board clock input + MMCM generation of 125/50 MHz
 *   - QSFP reference clocks
 *   - QSFP PHY wrapper instances
 *   - connection into fpga_core
 *
 * Removes:
 *   - PCIe core and all PCIe AXIS/config plumbing
 *   - flash/QSPI/STARTUPE3
 *   - CMS / board management
 *   - DDR plumbing
 *
 * NOTE:
 * This is a structural template and may require interface-name edits
 * to match your exact local definitions of fpga_core and
 * eth_xcvr_phy_10g_gty_quad_wrapper.
 */

`resetall
`timescale 1ns / 1ps
`default_nettype none

module fpga_au200_biw #
(
    parameter FPGA_ID = 32'h4B37093,
    parameter FW_ID = 32'h00000000,
    parameter FW_VER = 32'h00_00_01_00,
    parameter BOARD_ID = 32'h10ee_90c8,
    parameter BOARD_VER = 32'h01_00_00_00,
    parameter BUILD_DATE = 32'd602976000,
    parameter GIT_HASH = 32'hdce357bf,
    parameter RELEASE_INFO = 32'h00000000,

    parameter IF_COUNT = 2,
    parameter PORTS_PER_IF = 1,
    parameter SCHED_PER_IF = PORTS_PER_IF,
    parameter PORT_MASK = 0,

    parameter CLK_PERIOD_NS_NUM = 4,
    parameter CLK_PERIOD_NS_DENOM = 1,

    parameter PTP_TS_ENABLE = 1,
    parameter PTP_CLOCK_PIPELINE = 0,
    parameter PTP_CLOCK_CDC_PIPELINE = 0,
    parameter PTP_PORT_CDC_PIPELINE = 0,
    parameter PTP_PEROUT_ENABLE = 0,
    parameter PTP_PEROUT_COUNT = 1,

    parameter EVENT_QUEUE_OP_TABLE_SIZE = 32,
    parameter TX_QUEUE_OP_TABLE_SIZE = 32,
    parameter RX_QUEUE_OP_TABLE_SIZE = 32,
    parameter CQ_OP_TABLE_SIZE = 32,
    parameter EQN_WIDTH = 5,
    parameter TX_QUEUE_INDEX_WIDTH = 13,
    parameter RX_QUEUE_INDEX_WIDTH = 8,
    parameter CQN_WIDTH = (TX_QUEUE_INDEX_WIDTH > RX_QUEUE_INDEX_WIDTH ? TX_QUEUE_INDEX_WIDTH : RX_QUEUE_INDEX_WIDTH) + 1,
    parameter EQ_PIPELINE = 3,
    parameter TX_QUEUE_PIPELINE = 3+(TX_QUEUE_INDEX_WIDTH > 12 ? TX_QUEUE_INDEX_WIDTH-12 : 0),
    parameter RX_QUEUE_PIPELINE = 3+(RX_QUEUE_INDEX_WIDTH > 12 ? RX_QUEUE_INDEX_WIDTH-12 : 0),
    parameter CQ_PIPELINE = 3+(CQN_WIDTH > 12 ? CQN_WIDTH-12 : 0),

    parameter TX_DESC_TABLE_SIZE = 32,
    parameter RX_DESC_TABLE_SIZE = 32,
    parameter RX_INDIR_TBL_ADDR_WIDTH = RX_QUEUE_INDEX_WIDTH > 8 ? 8 : RX_QUEUE_INDEX_WIDTH,

    parameter TX_SCHEDULER_OP_TABLE_SIZE = TX_DESC_TABLE_SIZE,
    parameter TX_SCHEDULER_PIPELINE = TX_QUEUE_PIPELINE,
    parameter TDMA_INDEX_WIDTH = 6,

    parameter TX_CPL_FIFO_DEPTH = 32,
    parameter TX_CHECKSUM_ENABLE = 1,
    parameter RX_HASH_ENABLE = 1,
    parameter RX_CHECKSUM_ENABLE = 1,
    parameter PFC_ENABLE = 1,
    parameter LFC_ENABLE = PFC_ENABLE,
    parameter ENABLE_PADDING = 1,
    parameter ENABLE_DIC = 1,
    parameter MIN_FRAME_LENGTH = 64,
    parameter TX_FIFO_DEPTH = 32768,
    parameter RX_FIFO_DEPTH = 32768,
    parameter MAX_TX_SIZE = 9214,
    parameter MAX_RX_SIZE = 9214,
    parameter TX_RAM_SIZE = 32768,
    parameter RX_RAM_SIZE = 32768,

    parameter APP_ID = 32'h00000000,
    parameter APP_ENABLE = 0,
    parameter APP_CTRL_ENABLE = 1,
    parameter APP_DMA_ENABLE = 1,
    parameter APP_AXIS_DIRECT_ENABLE = 1,
    parameter APP_AXIS_SYNC_ENABLE = 1,
    parameter APP_AXIS_IF_ENABLE = 1,
    parameter APP_STAT_ENABLE = 1,

    parameter DMA_IMM_ENABLE = 0,
    parameter DMA_IMM_WIDTH = 32,
    parameter DMA_LEN_WIDTH = 16,
    parameter DMA_TAG_WIDTH = 16,
    parameter RAM_ADDR_WIDTH = $clog2(TX_RAM_SIZE > RX_RAM_SIZE ? TX_RAM_SIZE : RX_RAM_SIZE),
    parameter RAM_PIPELINE = 2,

    parameter AXIL_CTRL_DATA_WIDTH = 32,
    parameter AXIL_CTRL_ADDR_WIDTH = 24,
    parameter AXIL_APP_CTRL_DATA_WIDTH = AXIL_CTRL_DATA_WIDTH,
    parameter AXIL_APP_CTRL_ADDR_WIDTH = 24,

    parameter AXIS_ETH_SYNC_DATA_WIDTH_DOUBLE = 1,
    parameter AXIS_ETH_TX_PIPELINE = 4,
    parameter AXIS_ETH_TX_FIFO_PIPELINE = 4,
    parameter AXIS_ETH_TX_TS_PIPELINE = 4,
    parameter AXIS_ETH_RX_PIPELINE = 4,
    parameter AXIS_ETH_RX_FIFO_PIPELINE = 4,

    parameter STAT_ENABLE = 1,
    parameter STAT_DMA_ENABLE = 1,
    parameter STAT_PCIE_ENABLE = 1,
    parameter STAT_INC_WIDTH = 24,
    parameter STAT_ID_WIDTH = 12
)
(
    /*
     * Clock and reset
     */
    input  wire         clk_300mhz_0_p,
    input  wire         clk_300mhz_0_n,
    

    /*
     * Ethernet: QSFP28
     */
    output wire [3:0]   qsfp0_tx_p,
    output wire [3:0]   qsfp0_tx_n,
    input  wire [3:0]   qsfp0_rx_p,
    input  wire [3:0]   qsfp0_rx_n,
    input  wire         qsfp0_mgt_refclk_1_p,
    input  wire         qsfp0_mgt_refclk_1_n,
    output wire         qsfp0_refclk_reset,
    output wire [1:0]   qsfp0_fs,

    output wire [3:0]   qsfp1_tx_p,
    output wire [3:0]   qsfp1_tx_n,
    input  wire [3:0]   qsfp1_rx_p,
    input  wire [3:0]   qsfp1_rx_n,
    input  wire         qsfp1_mgt_refclk_1_p,
    input  wire         qsfp1_mgt_refclk_1_n,
    output wire         qsfp1_refclk_reset,
    output wire [1:0]   qsfp1_fs
);

parameter PTP_CLK_PERIOD_NS_NUM = 1024;
parameter PTP_CLK_PERIOD_NS_DENOM = 165;
parameter PTP_TS_WIDTH = 96;

parameter TX_TAG_WIDTH = 16;

parameter XGMII_DATA_WIDTH = 64;
parameter XGMII_CTRL_WIDTH = XGMII_DATA_WIDTH/8;
parameter AXIS_ETH_DATA_WIDTH = XGMII_DATA_WIDTH;
parameter AXIS_ETH_KEEP_WIDTH = AXIS_ETH_DATA_WIDTH/8;
parameter AXIS_ETH_SYNC_DATA_WIDTH = AXIS_ETH_DATA_WIDTH*(AXIS_ETH_SYNC_DATA_WIDTH_DOUBLE ? 2 : 1);
parameter AXIS_ETH_TX_USER_WIDTH = TX_TAG_WIDTH + 1;
parameter AXIS_ETH_RX_USER_WIDTH = (PTP_TS_ENABLE ? PTP_TS_WIDTH : 0) + 1;

localparam QSFP_CNT = 2;
localparam CH_CNT = QSFP_CNT*4;

// ==========================================================================
// 300 MHz board clock -> MMCM -> 125 MHz + 50 MHz
// ==========================================================================

wire clk_300mhz_0_ibufg;
wire clk_300mhz_0_int;

wire clk_50mhz_mmcm_out;
wire clk_125mhz_mmcm_out;

wire clk_50mhz_int;
wire rst_50mhz_int;

wire clk_125mhz_int;
wire rst_125mhz_int;

wire mmcm_rst;
wire mmcm_locked;
wire mmcm_clkfb;

IBUFGDS #(
   .DIFF_TERM("FALSE"),
   .IBUF_LOW_PWR("FALSE")
)
clk_300mhz_0_ibufg_inst (
   .O  (clk_300mhz_0_ibufg),
   .I  (clk_300mhz_0_p),
   .IB (clk_300mhz_0_n)
);

BUFG
clk_300mhz_0_bufg_inst (
    .I(clk_300mhz_0_ibufg),
    .O(clk_300mhz_0_int)
);

reg [7:0] mmcm_rst_cnt_reg = 8'hff;
reg mmcm_rst_reg = 1'b1;

assign mmcm_rst = mmcm_rst_reg;

always @(posedge clk_300mhz_0_int) begin
    if (mmcm_rst_cnt_reg != 0) begin
        mmcm_rst_cnt_reg <= mmcm_rst_cnt_reg - 1;
        mmcm_rst_reg <= 1'b1;
    end else begin
        mmcm_rst_reg <= 1'b0;
    end
end


MMCME4_BASE #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKOUT0_DIVIDE_F(8),
    .CLKOUT0_DUTY_CYCLE(0.5),
    .CLKOUT0_PHASE(0),
    .CLKOUT1_DIVIDE(20),
    .CLKOUT1_DUTY_CYCLE(0.5),
    .CLKOUT1_PHASE(0),
    .CLKOUT2_DIVIDE(3),
    .CLKOUT2_DUTY_CYCLE(0.5),
    .CLKOUT2_PHASE(0),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.5),
    .CLKOUT3_PHASE(0),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.5),
    .CLKOUT4_PHASE(0),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.5),
    .CLKOUT5_PHASE(0),
    .CLKOUT6_DIVIDE(1),
    .CLKOUT6_DUTY_CYCLE(0.5),
    .CLKOUT6_PHASE(0),
    .CLKFBOUT_MULT_F(10),
    .CLKFBOUT_PHASE(0),
    .DIVCLK_DIVIDE(3),
    .REF_JITTER1(0.010),
    .CLKIN1_PERIOD(3.333),
    .STARTUP_WAIT("FALSE"),
    .CLKOUT4_CASCADE("FALSE")
)
clk_mmcm_inst (
    .CLKIN1(clk_300mhz_0_int),
    .CLKFBIN(mmcm_clkfb),
    .RST(mmcm_rst),
    .PWRDWN(1'b0),
    .CLKOUT0(clk_125mhz_mmcm_out),
    .CLKOUT0B(),
    .CLKOUT1(clk_50mhz_mmcm_out),
    .CLKOUT1B(),
    .CLKOUT2(),
    .CLKOUT2B(),
    .CLKOUT3(),
    .CLKOUT3B(),
    .CLKOUT4(),
    .CLKOUT5(),
    .CLKOUT6(),
    .CLKFBOUT(mmcm_clkfb),
    .CLKFBOUTB(),
    .LOCKED(mmcm_locked)
);

BUFG
clk_50mhz_bufg_inst (
    .I(clk_50mhz_mmcm_out),
    .O(clk_50mhz_int)
);

BUFG
clk_125mhz_bufg_inst (
    .I(clk_125mhz_mmcm_out),
    .O(clk_125mhz_int)
);

sync_reset #(
    .N(4)
)
sync_reset_50mhz_inst (
    .clk(clk_50mhz_int),
    .rst(~mmcm_locked),
    .out(rst_50mhz_int)
);

sync_reset #(
    .N(4)
)
sync_reset_125mhz_inst (
    .clk(clk_125mhz_int),
    .rst(~mmcm_locked),
    .out(rst_125mhz_int)
);

// ==========================================================================
// QSFP PHY side
// ==========================================================================

wire [CH_CNT-1:0]                     qsfp_tx_clk;
wire [CH_CNT-1:0]                     qsfp_tx_rst;
wire [CH_CNT*XGMII_DATA_WIDTH-1:0]    qsfp_txd;
wire [CH_CNT*XGMII_CTRL_WIDTH-1:0]    qsfp_txc;
wire [CH_CNT-1:0]                     qsfp_cfg_tx_prbs31_enable;

wire [CH_CNT-1:0]                     qsfp_rx_clk;
wire [CH_CNT-1:0]                     qsfp_rx_rst;
wire [CH_CNT*XGMII_DATA_WIDTH-1:0]    qsfp_rxd;
wire [CH_CNT*XGMII_CTRL_WIDTH-1:0]    qsfp_rxc;
wire [CH_CNT-1:0]                     qsfp_cfg_rx_prbs31_enable;
wire [CH_CNT*7-1:0]                   qsfp_rx_error_count;
wire [CH_CNT-1:0]                     qsfp_rx_status;

// Keep DRP ports because wrapper expects them.
// Tie to local 125 MHz domain; they can later be tied off more aggressively
// if your wrapper permits it.
wire [QSFP_CNT-1:0]                   qsfp_drp_clk;
wire [QSFP_CNT-1:0]                   qsfp_drp_rst;
wire [QSFP_CNT*24-1:0]                qsfp_drp_addr;
wire [QSFP_CNT*16-1:0]                qsfp_drp_di;
wire [QSFP_CNT-1:0]                   qsfp_drp_en;
wire [QSFP_CNT-1:0]                   qsfp_drp_we;
wire [QSFP_CNT*16-1:0]                qsfp_drp_do;
wire [QSFP_CNT-1:0]                   qsfp_drp_rdy;

assign qsfp_drp_clk = {QSFP_CNT{clk_125mhz_int}};
assign qsfp_drp_rst = {QSFP_CNT{rst_125mhz_int}};
assign qsfp_drp_addr = {QSFP_CNT*24{1'b0}};
assign qsfp_drp_di   = {QSFP_CNT*16{1'b0}};
assign qsfp_drp_en   = {QSFP_CNT{1'b0}};
assign qsfp_drp_we   = {QSFP_CNT{1'b0}};

// static outputs
assign qsfp0_refclk_reset = 1'b0;
assign qsfp1_refclk_reset = 1'b0;
assign qsfp0_fs = 2'b10;
assign qsfp1_fs = 2'b10;

// ==========================================================================
// QSFP0 reference clock + reset
// ==========================================================================

wire qsfp0_gtpowergood;

wire qsfp0_mgt_refclk_1;
wire qsfp0_mgt_refclk_1_int;
wire qsfp0_mgt_refclk_1_bufg;

IBUFDS_GTE4 ibufds_gte4_qsfp0_mgt_refclk_1_inst (
    .I     (qsfp0_mgt_refclk_1_p),
    .IB    (qsfp0_mgt_refclk_1_n),
    .CEB   (1'b0),
    .O     (qsfp0_mgt_refclk_1),
    .ODIV2 (qsfp0_mgt_refclk_1_int)
);

BUFG_GT bufg_gt_qsfp0_mgt_refclk_1_inst (
    .CE      (qsfp0_gtpowergood),
    .CEMASK  (1'b1),
    .CLR     (1'b0),
    .CLRMASK (1'b1),
    .DIV     (3'd0),
    .I       (qsfp0_mgt_refclk_1_int),
    .O       (qsfp0_mgt_refclk_1_bufg)
);

wire qsfp0_rst;

sync_reset #(
    .N(4)
)
qsfp0_sync_reset_inst (
    .clk(qsfp0_mgt_refclk_1_bufg),
    .rst(rst_125mhz_int),
    .out(qsfp0_rst)
);

// ==========================================================================
// QSFP1 reference clock + reset
// ==========================================================================

wire qsfp1_gtpowergood;

wire qsfp1_mgt_refclk_1;
wire qsfp1_mgt_refclk_1_int;
wire qsfp1_mgt_refclk_1_bufg;

IBUFDS_GTE4 ibufds_gte4_qsfp1_mgt_refclk_1_inst (
    .I     (qsfp1_mgt_refclk_1_p),
    .IB    (qsfp1_mgt_refclk_1_n),
    .CEB   (1'b0),
    .O     (qsfp1_mgt_refclk_1),
    .ODIV2 (qsfp1_mgt_refclk_1_int)
);

BUFG_GT bufg_gt_qsfp1_mgt_refclk_1_inst (
    .CE      (qsfp1_gtpowergood),
    .CEMASK  (1'b1),
    .CLR     (1'b0),
    .CLRMASK (1'b1),
    .DIV     (3'd0),
    .I       (qsfp1_mgt_refclk_1_int),
    .O       (qsfp1_mgt_refclk_1_bufg)
);

wire qsfp1_rst;

sync_reset #(
    .N(4)
)
qsfp1_sync_reset_inst (
    .clk(qsfp1_mgt_refclk_1_bufg),
    .rst(rst_125mhz_int),
    .out(qsfp1_rst)
);

// ==========================================================================
// QSFP0 PHY wrapper
// ==========================================================================

eth_xcvr_phy_10g_gty_quad_wrapper #(
    .PRBS31_ENABLE(1),
    .TX_SERDES_PIPELINE(1),
    .RX_SERDES_PIPELINE(1),
    .COUNT_125US(125000/2.56)
)
qsfp0_phy_quad_inst (
    .xcvr_ctrl_clk(clk_125mhz_int),
    .xcvr_ctrl_rst(qsfp0_rst),

    /*
     * Common
     */
    .xcvr_gtpowergood_out(qsfp0_gtpowergood),
    .xcvr_gtrefclk00_in(qsfp0_mgt_refclk_1),
    .xcvr_qpll0pd_in(1'b0),
    .xcvr_qpll0reset_in(1'b0),
    .xcvr_qpll0pcierate_in(3'd0),
    .xcvr_qpll0lock_out(),
    .xcvr_qpll0clk_out(),
    .xcvr_qpll0refclk_out(),
    .xcvr_gtrefclk01_in(qsfp0_mgt_refclk_1),
    .xcvr_qpll1pd_in(1'b0),
    .xcvr_qpll1reset_in(1'b0),
    .xcvr_qpll1pcierate_in(3'd0),
    .xcvr_qpll1lock_out(),
    .xcvr_qpll1clk_out(),
    .xcvr_qpll1refclk_out(),

    /*
     * DRP
     */
    .drp_clk(qsfp_drp_clk[0 +: 1]),
    .drp_rst(qsfp_drp_rst[0 +: 1]),
    .drp_addr(qsfp_drp_addr[0*24 +: 24]),
    .drp_di(qsfp_drp_di[0*16 +: 16]),
    .drp_en(qsfp_drp_en[0 +: 1]),
    .drp_we(qsfp_drp_we[0 +: 1]),
    .drp_do(qsfp_drp_do[0*16 +: 16]),
    .drp_rdy(qsfp_drp_rdy[0 +: 1]),

    /*
     * Serial data
     */
    .xcvr_txp(qsfp0_tx_p),
    .xcvr_txn(qsfp0_tx_n),
    .xcvr_rxp(qsfp0_rx_p),
    .xcvr_rxn(qsfp0_rx_n),

    /*
     * PHY connections
     */
    .phy_1_tx_clk(qsfp_tx_clk[0*4+0 +: 1]),
    .phy_1_tx_rst(qsfp_tx_rst[0*4+0 +: 1]),
    .phy_1_xgmii_txd(qsfp_txd[(0*4+0)*XGMII_DATA_WIDTH +: XGMII_DATA_WIDTH]),
    .phy_1_xgmii_txc(qsfp_txc[(0*4+0)*XGMII_CTRL_WIDTH +: XGMII_CTRL_WIDTH]),
    .phy_1_rx_clk(qsfp_rx_clk[0*4+0 +: 1]),
    .phy_1_rx_rst(qsfp_rx_rst[0*4+0 +: 1]),
    .phy_1_xgmii_rxd(qsfp_rxd[(0*4+0)*XGMII_DATA_WIDTH +: XGMII_DATA_WIDTH]),
    .phy_1_xgmii_rxc(qsfp_rxc[(0*4+0)*XGMII_CTRL_WIDTH +: XGMII_CTRL_WIDTH]),
    .phy_1_tx_bad_block(),
    .phy_1_rx_error_count(qsfp_rx_error_count[(0*4+0)*7 +: 7]),
    .phy_1_rx_bad_block(),
    .phy_1_rx_sequence_error(),
    .phy_1_rx_block_lock(),
    .phy_1_rx_high_ber(),
    .phy_1_rx_status(qsfp_rx_status[0*4+0 +: 1]),
    .phy_1_cfg_tx_prbs31_enable(qsfp_cfg_tx_prbs31_enable[0*4+0 +: 1]),
    .phy_1_cfg_rx_prbs31_enable(qsfp_cfg_rx_prbs31_enable[0*4+0 +: 1]),

    .phy_2_tx_clk(qsfp_tx_clk[0*4+1 +: 1]),
    .phy_2_tx_rst(qsfp_tx_rst[0*4+1 +: 1]),
    .phy_2_xgmii_txd(qsfp_txd[(0*4+1)*XGMII_DATA_WIDTH +: XGMII_DATA_WIDTH]),
    .phy_2_xgmii_txc(qsfp_txc[(0*4+1)*XGMII_CTRL_WIDTH +: XGMII_CTRL_WIDTH]),
    .phy_2_rx_clk(qsfp_rx_clk[0*4+1 +: 1]),
    .phy_2_rx_rst(qsfp_rx_rst[0*4+1 +: 1]),
    .phy_2_xgmii_rxd(qsfp_rxd[(0*4+1)*XGMII_DATA_WIDTH +: XGMII_DATA_WIDTH]),
    .phy_2_xgmii_rxc(qsfp_rxc[(0*4+1)*XGMII_CTRL_WIDTH +: XGMII_CTRL_WIDTH]),
    .phy_2_tx_bad_block(),
    .phy_2_rx_error_count(qsfp_rx_error_count[(0*4+1)*7 +: 7]),
    .phy_2_rx_bad_block(),
    .phy_2_rx_sequence_error(),
    .phy_2_rx_block_lock(),
    .phy_2_rx_high_ber(),
    .phy_2_rx_status(qsfp_rx_status[0*4+1 +: 1]),
    .phy_2_cfg_tx_prbs31_enable(qsfp_cfg_tx_prbs31_enable[0*4+1 +: 1]),
    .phy_2_cfg_rx_prbs31_enable(qsfp_cfg_rx_prbs31_enable[0*4+1 +: 1]),

    .phy_3_tx_clk(qsfp_tx_clk[0*4+2 +: 1]),
    .phy_3_tx_rst(qsfp_tx_rst[0*4+2 +: 1]),
    .phy_3_xgmii_txd(qsfp_txd[(0*4+2)*XGMII_DATA_WIDTH +: XGMII_DATA_WIDTH]),
    .phy_3_xgmii_txc(qsfp_txc[(0*4+2)*XGMII_CTRL_WIDTH +: XGMII_CTRL_WIDTH]),
    .phy_3_rx_clk(qsfp_rx_clk[0*4+2 +: 1]),
    .phy_3_rx_rst(qsfp_rx_rst[0*4+2 +: 1]),
    .phy_3_xgmii_rxd(qsfp_rxd[(0*4+2)*XGMII_DATA_WIDTH +: XGMII_DATA_WIDTH]),
    .phy_3_xgmii_rxc(qsfp_rxc[(0*4+2)*XGMII_CTRL_WIDTH +: XGMII_CTRL_WIDTH]),
    .phy_3_tx_bad_block(),
    .phy_3_rx_error_count(qsfp_rx_error_count[(0*4+2)*7 +: 7]),
    .phy_3_rx_bad_block(),
    .phy_3_rx_sequence_error(),
    .phy_3_rx_block_lock(),
    .phy_3_rx_high_ber(),
    .phy_3_rx_status(qsfp_rx_status[0*4+2 +: 1]),
    .phy_3_cfg_tx_prbs31_enable(qsfp_cfg_tx_prbs31_enable[0*4+2 +: 1]),
    .phy_3_cfg_rx_prbs31_enable(qsfp_cfg_rx_prbs31_enable[0*4+2 +: 1]),

    .phy_4_tx_clk(qsfp_tx_clk[0*4+3 +: 1]),
    .phy_4_tx_rst(qsfp_tx_rst[0*4+3 +: 1]),
    .phy_4_xgmii_txd(qsfp_txd[(0*4+3)*XGMII_DATA_WIDTH +: XGMII_DATA_WIDTH]),
    .phy_4_xgmii_txc(qsfp_txc[(0*4+3)*XGMII_CTRL_WIDTH +: XGMII_CTRL_WIDTH]),
    .phy_4_rx_clk(qsfp_rx_clk[0*4+3 +: 1]),
    .phy_4_rx_rst(qsfp_rx_rst[0*4+3 +: 1]),
    .phy_4_xgmii_rxd(qsfp_rxd[(0*4+3)*XGMII_DATA_WIDTH +: XGMII_DATA_WIDTH]),
    .phy_4_xgmii_rxc(qsfp_rxc[(0*4+3)*XGMII_CTRL_WIDTH +: XGMII_CTRL_WIDTH]),
    .phy_4_tx_bad_block(),
    .phy_4_rx_error_count(qsfp_rx_error_count[(0*4+3)*7 +: 7]),
    .phy_4_rx_bad_block(),
    .phy_4_rx_sequence_error(),
    .phy_4_rx_block_lock(),
    .phy_4_rx_high_ber(),
    .phy_4_rx_status(qsfp_rx_status[0*4+3 +: 1]),
    .phy_4_cfg_tx_prbs31_enable(qsfp_cfg_tx_prbs31_enable[0*4+3 +: 1]),
    .phy_4_cfg_rx_prbs31_enable(qsfp_cfg_rx_prbs31_enable[0*4+3 +: 1])
);

// ==========================================================================
// QSFP1 PHY wrapper
// ==========================================================================

eth_xcvr_phy_10g_gty_quad_wrapper #(
    .PRBS31_ENABLE(1),
    .TX_SERDES_PIPELINE(1),
    .RX_SERDES_PIPELINE(1),
    .COUNT_125US(125000/2.56)
)
qsfp1_phy_quad_inst (
    .xcvr_ctrl_clk(clk_125mhz_int),
    .xcvr_ctrl_rst(qsfp1_rst),

    /*
     * Common
     */
    .xcvr_gtpowergood_out(qsfp1_gtpowergood),
    .xcvr_gtrefclk00_in(qsfp1_mgt_refclk_1),
    .xcvr_qpll0pd_in(1'b0),
    .xcvr_qpll0reset_in(1'b0),
    .xcvr_qpll0pcierate_in(3'd0),
    .xcvr_qpll0lock_out(),
    .xcvr_qpll0clk_out(),
    .xcvr_qpll0refclk_out(),
    .xcvr_gtrefclk01_in(qsfp1_mgt_refclk_1),
    .xcvr_qpll1pd_in(1'b0),
    .xcvr_qpll1reset_in(1'b0),
    .xcvr_qpll1pcierate_in(3'd0),
    .xcvr_qpll1lock_out(),
    .xcvr_qpll1clk_out(),
    .xcvr_qpll1refclk_out(),

    /*
     * DRP
     */
    .drp_clk(qsfp_drp_clk[1 +: 1]),
    .drp_rst(qsfp_drp_rst[1 +: 1]),
    .drp_addr(qsfp_drp_addr[1*24 +: 24]),
    .drp_di(qsfp_drp_di[1*16 +: 16]),
    .drp_en(qsfp_drp_en[1 +: 1]),
    .drp_we(qsfp_drp_we[1 +: 1]),
    .drp_do(qsfp_drp_do[1*16 +: 16]),
    .drp_rdy(qsfp_drp_rdy[1 +: 1]),

    /*
     * Serial data
     */
    .xcvr_txp(qsfp1_tx_p),
    .xcvr_txn(qsfp1_tx_n),
    .xcvr_rxp(qsfp1_rx_p),
    .xcvr_rxn(qsfp1_rx_n),

    /*
     * PHY connections
     */
    .phy_1_tx_clk(qsfp_tx_clk[1*4+0 +: 1]),
    .phy_1_tx_rst(qsfp_tx_rst[1*4+0 +: 1]),
    .phy_1_xgmii_txd(qsfp_txd[(1*4+0)*XGMII_DATA_WIDTH +: XGMII_DATA_WIDTH]),
    .phy_1_xgmii_txc(qsfp_txc[(1*4+0)*XGMII_CTRL_WIDTH +: XGMII_CTRL_WIDTH]),
    .phy_1_rx_clk(qsfp_rx_clk[1*4+0 +: 1]),
    .phy_1_rx_rst(qsfp_rx_rst[1*4+0 +: 1]),
    .phy_1_xgmii_rxd(qsfp_rxd[(1*4+0)*XGMII_DATA_WIDTH +: XGMII_DATA_WIDTH]),
    .phy_1_xgmii_rxc(qsfp_rxc[(1*4+0)*XGMII_CTRL_WIDTH +: XGMII_CTRL_WIDTH]),
    .phy_1_tx_bad_block(),
    .phy_1_rx_error_count(qsfp_rx_error_count[(1*4+0)*7 +: 7]),
    .phy_1_rx_bad_block(),
    .phy_1_rx_sequence_error(),
    .phy_1_rx_block_lock(),
    .phy_1_rx_high_ber(),
    .phy_1_rx_status(qsfp_rx_status[1*4+0 +: 1]),
    .phy_1_cfg_tx_prbs31_enable(qsfp_cfg_tx_prbs31_enable[1*4+0 +: 1]),
    .phy_1_cfg_rx_prbs31_enable(qsfp_cfg_rx_prbs31_enable[1*4+0 +: 1]),

    .phy_2_tx_clk(qsfp_tx_clk[1*4+1 +: 1]),
    .phy_2_tx_rst(qsfp_tx_rst[1*4+1 +: 1]),
    .phy_2_xgmii_txd(qsfp_txd[(1*4+1)*XGMII_DATA_WIDTH +: XGMII_DATA_WIDTH]),
    .phy_2_xgmii_txc(qsfp_txc[(1*4+1)*XGMII_CTRL_WIDTH +: XGMII_CTRL_WIDTH]),
    .phy_2_rx_clk(qsfp_rx_clk[1*4+1 +: 1]),
    .phy_2_rx_rst(qsfp_rx_rst[1*4+1 +: 1]),
    .phy_2_xgmii_rxd(qsfp_rxd[(1*4+1)*XGMII_DATA_WIDTH +: XGMII_DATA_WIDTH]),
    .phy_2_xgmii_rxc(qsfp_rxc[(1*4+1)*XGMII_CTRL_WIDTH +: XGMII_CTRL_WIDTH]),
    .phy_2_tx_bad_block(),
    .phy_2_rx_error_count(qsfp_rx_error_count[(1*4+1)*7 +: 7]),
    .phy_2_rx_bad_block(),
    .phy_2_rx_sequence_error(),
    .phy_2_rx_block_lock(),
    .phy_2_rx_high_ber(),
    .phy_2_rx_status(qsfp_rx_status[1*4+1 +: 1]),
    .phy_2_cfg_tx_prbs31_enable(qsfp_cfg_tx_prbs31_enable[1*4+1 +: 1]),
    .phy_2_cfg_rx_prbs31_enable(qsfp_cfg_rx_prbs31_enable[1*4+1 +: 1]),

    .phy_3_tx_clk(qsfp_tx_clk[1*4+2 +: 1]),
    .phy_3_tx_rst(qsfp_tx_rst[1*4+2 +: 1]),
    .phy_3_xgmii_txd(qsfp_txd[(1*4+2)*XGMII_DATA_WIDTH +: XGMII_DATA_WIDTH]),
    .phy_3_xgmii_txc(qsfp_txc[(1*4+2)*XGMII_CTRL_WIDTH +: XGMII_CTRL_WIDTH]),
    .phy_3_rx_clk(qsfp_rx_clk[1*4+2 +: 1]),
    .phy_3_rx_rst(qsfp_rx_rst[1*4+2 +: 1]),
    .phy_3_xgmii_rxd(qsfp_rxd[(1*4+2)*XGMII_DATA_WIDTH +: XGMII_DATA_WIDTH]),
    .phy_3_xgmii_rxc(qsfp_rxc[(1*4+2)*XGMII_CTRL_WIDTH +: XGMII_CTRL_WIDTH]),
    .phy_3_tx_bad_block(),
    .phy_3_rx_error_count(qsfp_rx_error_count[(1*4+2)*7 +: 7]),
    .phy_3_rx_bad_block(),
    .phy_3_rx_sequence_error(),
    .phy_3_rx_block_lock(),
    .phy_3_rx_high_ber(),
    .phy_3_rx_status(qsfp_rx_status[1*4+2 +: 1]),
    .phy_3_cfg_tx_prbs31_enable(qsfp_cfg_tx_prbs31_enable[1*4+2 +: 1]),
    .phy_3_cfg_rx_prbs31_enable(qsfp_cfg_rx_prbs31_enable[1*4+2 +: 1]),

    .phy_4_tx_clk(qsfp_tx_clk[1*4+3 +: 1]),
    .phy_4_tx_rst(qsfp_tx_rst[1*4+3 +: 1]),
    .phy_4_xgmii_txd(qsfp_txd[(1*4+3)*XGMII_DATA_WIDTH +: XGMII_DATA_WIDTH]),
    .phy_4_xgmii_txc(qsfp_txc[(1*4+3)*XGMII_CTRL_WIDTH +: XGMII_CTRL_WIDTH]),
    .phy_4_rx_clk(qsfp_rx_clk[1*4+3 +: 1]),
    .phy_4_rx_rst(qsfp_rx_rst[1*4+3 +: 1]),
    .phy_4_xgmii_rxd(qsfp_rxd[(1*4+3)*XGMII_DATA_WIDTH +: XGMII_DATA_WIDTH]),
    .phy_4_xgmii_rxc(qsfp_rxc[(1*4+3)*XGMII_CTRL_WIDTH +: XGMII_CTRL_WIDTH]),
    .phy_4_tx_bad_block(),
    .phy_4_rx_error_count(qsfp_rx_error_count[(1*4+3)*7 +: 7]),
    .phy_4_rx_bad_block(),
    .phy_4_rx_sequence_error(),
    .phy_4_rx_block_lock(),
    .phy_4_rx_high_ber(),
    .phy_4_rx_status(qsfp_rx_status[1*4+3 +: 1]),
    .phy_4_cfg_tx_prbs31_enable(qsfp_cfg_tx_prbs31_enable[1*4+3 +: 1]),
    .phy_4_cfg_rx_prbs31_enable(qsfp_cfg_rx_prbs31_enable[1*4+3 +: 1])
);

// ==========================================================================
// PTP clocking
// ==========================================================================

wire ptp_clk;
wire ptp_rst;
wire ptp_sample_clk;

assign ptp_clk = qsfp0_mgt_refclk_1_bufg;
assign ptp_rst = qsfp0_rst;
assign ptp_sample_clk = clk_125mhz_int;

// ==========================================================================
// Core instance
// NOTE: This assumes you will modify fpga_core so PCIe-facing ports are
// removed or stubbed. This top still passes the Ethernet-side signals only.
// ==========================================================================

fpga_core #(
    .FPGA_ID(FPGA_ID),
    .FW_ID(FW_ID),
    .FW_VER(FW_VER),
    .BOARD_ID(BOARD_ID),
    .BOARD_VER(BOARD_VER),
    .BUILD_DATE(BUILD_DATE),
    .GIT_HASH(GIT_HASH),
    .RELEASE_INFO(RELEASE_INFO),

    .IF_COUNT(IF_COUNT),
    .PORTS_PER_IF(PORTS_PER_IF),
    .SCHED_PER_IF(SCHED_PER_IF),
    .PORT_MASK(PORT_MASK),

    .CLK_PERIOD_NS_NUM(CLK_PERIOD_NS_NUM),
    .CLK_PERIOD_NS_DENOM(CLK_PERIOD_NS_DENOM),

    .PTP_CLK_PERIOD_NS_NUM(PTP_CLK_PERIOD_NS_NUM),
    .PTP_CLK_PERIOD_NS_DENOM(PTP_CLK_PERIOD_NS_DENOM),
    .PTP_TS_WIDTH(PTP_TS_WIDTH),
    .PTP_CLOCK_PIPELINE(PTP_CLOCK_PIPELINE),
    .PTP_CLOCK_CDC_PIPELINE(PTP_CLOCK_CDC_PIPELINE),
    .PTP_PORT_CDC_PIPELINE(PTP_PORT_CDC_PIPELINE),
    .PTP_PEROUT_ENABLE(PTP_PEROUT_ENABLE),
    .PTP_PEROUT_COUNT(PTP_PEROUT_COUNT),

    .EVENT_QUEUE_OP_TABLE_SIZE(EVENT_QUEUE_OP_TABLE_SIZE),
    .TX_QUEUE_OP_TABLE_SIZE(TX_QUEUE_OP_TABLE_SIZE),
    .RX_QUEUE_OP_TABLE_SIZE(RX_QUEUE_OP_TABLE_SIZE),
    .CQ_OP_TABLE_SIZE(CQ_OP_TABLE_SIZE),
    .EQN_WIDTH(EQN_WIDTH),
    .TX_QUEUE_INDEX_WIDTH(TX_QUEUE_INDEX_WIDTH),
    .RX_QUEUE_INDEX_WIDTH(RX_QUEUE_INDEX_WIDTH),
    .CQN_WIDTH(CQN_WIDTH),
    .EQ_PIPELINE(EQ_PIPELINE),
    .TX_QUEUE_PIPELINE(TX_QUEUE_PIPELINE),
    .RX_QUEUE_PIPELINE(RX_QUEUE_PIPELINE),
    .CQ_PIPELINE(CQ_PIPELINE),

    .TX_DESC_TABLE_SIZE(TX_DESC_TABLE_SIZE),
    .RX_DESC_TABLE_SIZE(RX_DESC_TABLE_SIZE),
    .RX_INDIR_TBL_ADDR_WIDTH(RX_INDIR_TBL_ADDR_WIDTH),

    .TX_SCHEDULER_OP_TABLE_SIZE(TX_SCHEDULER_OP_TABLE_SIZE),
    .TX_SCHEDULER_PIPELINE(TX_SCHEDULER_PIPELINE),
    .TDMA_INDEX_WIDTH(TDMA_INDEX_WIDTH),

    .PTP_TS_ENABLE(PTP_TS_ENABLE),
    .TX_CPL_FIFO_DEPTH(TX_CPL_FIFO_DEPTH),
    .TX_TAG_WIDTH(TX_TAG_WIDTH),
    .TX_CHECKSUM_ENABLE(TX_CHECKSUM_ENABLE),
    .RX_HASH_ENABLE(RX_HASH_ENABLE),
    .RX_CHECKSUM_ENABLE(RX_CHECKSUM_ENABLE),
    .PFC_ENABLE(PFC_ENABLE),
    .LFC_ENABLE(LFC_ENABLE),
    .ENABLE_PADDING(ENABLE_PADDING),
    .ENABLE_DIC(ENABLE_DIC),
    .MIN_FRAME_LENGTH(MIN_FRAME_LENGTH),
    .TX_FIFO_DEPTH(TX_FIFO_DEPTH),
    .RX_FIFO_DEPTH(RX_FIFO_DEPTH),
    .MAX_TX_SIZE(MAX_TX_SIZE),
    .MAX_RX_SIZE(MAX_RX_SIZE),
    .TX_RAM_SIZE(TX_RAM_SIZE),
    .RX_RAM_SIZE(RX_RAM_SIZE),

    .DDR_CH(0),
    .DDR_ENABLE(0),
    .HBM_ENABLE(0),

    .APP_ID(APP_ID),
    .APP_ENABLE(APP_ENABLE),
    .APP_CTRL_ENABLE(APP_CTRL_ENABLE),
    .APP_DMA_ENABLE(APP_DMA_ENABLE),
    .APP_AXIS_DIRECT_ENABLE(APP_AXIS_DIRECT_ENABLE),
    .APP_AXIS_SYNC_ENABLE(APP_AXIS_SYNC_ENABLE),
    .APP_AXIS_IF_ENABLE(APP_AXIS_IF_ENABLE),
    .APP_STAT_ENABLE(APP_STAT_ENABLE),

    .DMA_IMM_ENABLE(DMA_IMM_ENABLE),
    .DMA_IMM_WIDTH(DMA_IMM_WIDTH),
    .DMA_LEN_WIDTH(DMA_LEN_WIDTH),
    .DMA_TAG_WIDTH(DMA_TAG_WIDTH),
    .RAM_ADDR_WIDTH(RAM_ADDR_WIDTH),
    .RAM_PIPELINE(RAM_PIPELINE),

    .AXIL_CTRL_DATA_WIDTH(AXIL_CTRL_DATA_WIDTH),
    .AXIL_CTRL_ADDR_WIDTH(AXIL_CTRL_ADDR_WIDTH),
    .AXIL_APP_CTRL_DATA_WIDTH(AXIL_APP_CTRL_DATA_WIDTH),
    .AXIL_APP_CTRL_ADDR_WIDTH(AXIL_APP_CTRL_ADDR_WIDTH),

    .XGMII_DATA_WIDTH(XGMII_DATA_WIDTH),
    .XGMII_CTRL_WIDTH(XGMII_CTRL_WIDTH),
    .AXIS_ETH_DATA_WIDTH(AXIS_ETH_DATA_WIDTH),
    .AXIS_ETH_KEEP_WIDTH(AXIS_ETH_KEEP_WIDTH),
    .AXIS_ETH_SYNC_DATA_WIDTH(AXIS_ETH_SYNC_DATA_WIDTH),
    .AXIS_ETH_TX_USER_WIDTH(AXIS_ETH_TX_USER_WIDTH),
    .AXIS_ETH_RX_USER_WIDTH(AXIS_ETH_RX_USER_WIDTH),
    .AXIS_ETH_TX_PIPELINE(AXIS_ETH_TX_PIPELINE),
    .AXIS_ETH_TX_FIFO_PIPELINE(AXIS_ETH_TX_FIFO_PIPELINE),
    .AXIS_ETH_TX_TS_PIPELINE(AXIS_ETH_TX_TS_PIPELINE),
    .AXIS_ETH_RX_PIPELINE(AXIS_ETH_RX_PIPELINE),
    .AXIS_ETH_RX_FIFO_PIPELINE(AXIS_ETH_RX_FIFO_PIPELINE),

    .STAT_ENABLE(STAT_ENABLE),
    .STAT_DMA_ENABLE(STAT_DMA_ENABLE),
    .STAT_PCIE_ENABLE(STAT_PCIE_ENABLE),
    .STAT_INC_WIDTH(STAT_INC_WIDTH),
    .STAT_ID_WIDTH(STAT_ID_WIDTH)
)
core_inst (
    .clk_250mhz(clk_125mhz_int),   // temporary naming mismatch until core is edited
    .rst_250mhz(rst_125mhz_int),

    .ptp_clk(ptp_clk),
    .ptp_rst(ptp_rst),
    .ptp_sample_clk(ptp_sample_clk),

    .sw(4'd0),
    .led(),

    .i2c_scl_i(1'b1),
    .i2c_scl_o(),
    .i2c_scl_t(),
    .i2c_sda_i(1'b1),
    .i2c_sda_o(),
    .i2c_sda_t(),

    // PCIe ports intentionally omitted in this bump-in-wire top.
    // These must be removed from fpga_core or stubbed there.

    .qsfp_tx_clk(qsfp_tx_clk),
    .qsfp_tx_rst(qsfp_tx_rst),
    .qsfp_txd(qsfp_txd),
    .qsfp_txc(qsfp_txc),
    .qsfp_cfg_tx_prbs31_enable(qsfp_cfg_tx_prbs31_enable),

    .qsfp_rx_clk(qsfp_rx_clk),
    .qsfp_rx_rst(qsfp_rx_rst),
    .qsfp_rxd(qsfp_rxd),
    .qsfp_rxc(qsfp_rxc),
    .qsfp_cfg_rx_prbs31_enable(qsfp_cfg_rx_prbs31_enable),
    .qsfp_rx_error_count(qsfp_rx_error_count),
    .qsfp_rx_status(qsfp_rx_status),

    .qsfp_drp_clk(qsfp_drp_clk),
    .qsfp_drp_rst(qsfp_drp_rst),
    .qsfp_drp_addr(qsfp_drp_addr),
    .qsfp_drp_di(qsfp_drp_di),
    .qsfp_drp_en(qsfp_drp_en),
    .qsfp_drp_we(qsfp_drp_we),
    .qsfp_drp_do(qsfp_drp_do),
    .qsfp_drp_rdy(qsfp_drp_rdy),

    .qsfp_modprsl(2'b11),
    .qsfp_modsell(),
    .qsfp_resetl(),
    .qsfp_intl(2'b11),
    .qsfp_lpmode()

    // DDR/HBM/flash/CMS omitted
);

endmodule

`resetall