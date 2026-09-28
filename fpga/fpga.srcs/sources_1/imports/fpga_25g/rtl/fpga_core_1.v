// SPDX-License-Identifier: BSD-2-Clause-Views
/*
 * Simplified fpga_core for bump-in-the-wire operation at AXIS level
 *
 * Datapath per direction:
 *   PHY/XGMII -> eth_mac_10g RX AXIS -> packet_edit_hook -> async FIFO/CDC -> eth_mac_10g TX AXIS -> PHY/XGMII
 *
 * Direction mapping in this file:
 *   logical port 0 RX  -> logical port 1 TX
 *   logical port 1 RX  -> logical port 0 TX
 */

`resetall
`timescale 1ns / 1ps
`default_nettype none

module fpga_core #
(
    // FW and board IDs
    parameter FPGA_ID = 32'h4B37093,
    parameter FW_ID = 32'h00000000,
    parameter FW_VER = 32'h00_00_01_00,
    parameter BOARD_ID = 32'h10ee_90c8,
    parameter BOARD_VER = 32'h01_00_00_00,
    parameter BUILD_DATE = 32'd602976000,
    parameter GIT_HASH = 32'hdce357bf,
    parameter RELEASE_INFO = 32'd0,

    // Board configuration
    parameter QSFP_CNT = 2,
    parameter CH_CNT = QSFP_CNT*4,
    parameter CMS_ENABLE = 1,
    parameter TDMA_BER_ENABLE = 0,

    // Flash configuration (kept only so top-level compiles cleanly)
    parameter FLASH_SEG_COUNT = 2,
    parameter FLASH_SEG_DEFAULT = 1,
    parameter FLASH_SEG_FALLBACK = 0,
    parameter FLASH_SEG0_SIZE = 32'h01002000,

    // Structural configuration
    parameter IF_COUNT = 2,
    parameter PORTS_PER_IF = 1,
    parameter SCHED_PER_IF = PORTS_PER_IF,
    parameter PORT_MASK = 0,

    parameter PORT_COUNT = IF_COUNT*PORTS_PER_IF,

    // Clock configuration
    parameter CLK_PERIOD_NS_NUM = 4,
    parameter CLK_PERIOD_NS_DENOM = 1,

    // PTP configuration
    parameter PTP_CLK_PERIOD_NS_NUM = 1024,
    parameter PTP_CLK_PERIOD_NS_DENOM = 165,
    parameter PTP_TS_WIDTH = 96,
    parameter PTP_CLOCK_PIPELINE = 0,
    parameter PTP_CLOCK_CDC_PIPELINE = 0,
    parameter PTP_PORT_CDC_PIPELINE = 0,
    parameter PTP_PEROUT_ENABLE = 0,
    parameter PTP_PEROUT_COUNT = 1,

    // Queue/engine params retained only to preserve top-level compatibility
    parameter EVENT_QUEUE_OP_TABLE_SIZE = 32,
    parameter TX_QUEUE_OP_TABLE_SIZE = 32,
    parameter RX_QUEUE_OP_TABLE_SIZE = 32,
    parameter CQ_OP_TABLE_SIZE = 32,
    parameter EQN_WIDTH = 5,
    parameter TX_QUEUE_INDEX_WIDTH = 13,
    parameter RX_QUEUE_INDEX_WIDTH = 8,
    parameter CQN_WIDTH = 14,
    parameter EQ_PIPELINE = 3,
    parameter TX_QUEUE_PIPELINE = 3,
    parameter RX_QUEUE_PIPELINE = 3,
    parameter CQ_PIPELINE = 3,
    parameter TX_DESC_TABLE_SIZE = 32,
    parameter RX_DESC_TABLE_SIZE = 32,
    parameter RX_INDIR_TBL_ADDR_WIDTH = 8,
    parameter TX_SCHEDULER_OP_TABLE_SIZE = 32,
    parameter TX_SCHEDULER_PIPELINE = 3,
    parameter TDMA_INDEX_WIDTH = 6,

    // Interface configuration
    parameter PTP_TS_ENABLE = 1,
    parameter TX_CPL_FIFO_DEPTH = 32,
    parameter TX_TAG_WIDTH = 16,
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

    // RAM configuration retained only for interface compatibility
    parameter DDR_CH = 4,
    parameter DDR_ENABLE = 0,
    parameter AXI_DDR_DATA_WIDTH = 512,
    parameter AXI_DDR_ADDR_WIDTH = 34,
    parameter AXI_DDR_STRB_WIDTH = (AXI_DDR_DATA_WIDTH/8),
    parameter AXI_DDR_ID_WIDTH = 8,
    parameter AXI_DDR_MAX_BURST_LEN = 256,
    parameter AXI_DDR_NARROW_BURST = 0,
    parameter HBM_ENABLE = 0,

    // Application configuration retained only for compatibility
    parameter APP_ID = 32'h00000000,
    parameter APP_ENABLE = 0,
    parameter APP_CTRL_ENABLE = 1,
    parameter APP_DMA_ENABLE = 1,
    parameter APP_AXIS_DIRECT_ENABLE = 1,
    parameter APP_AXIS_SYNC_ENABLE = 1,
    parameter APP_AXIS_IF_ENABLE = 1,
    parameter APP_STAT_ENABLE = 1,

    // DMA configuration retained only for compatibility
    parameter DMA_IMM_ENABLE = 0,
    parameter DMA_IMM_WIDTH = 32,
    parameter DMA_LEN_WIDTH = 16,
    parameter DMA_TAG_WIDTH = 16,
    parameter RAM_ADDR_WIDTH = 15,
    parameter RAM_PIPELINE = 2,

    // Interrupt configuration
    parameter IRQ_INDEX_WIDTH = EQN_WIDTH,

    // AXI-Lite configuration retained only for compatibility
    parameter AXIL_CTRL_DATA_WIDTH = 32,
    parameter AXIL_CTRL_ADDR_WIDTH = 24,
    parameter AXIL_APP_CTRL_DATA_WIDTH = AXIL_CTRL_DATA_WIDTH,
    parameter AXIL_APP_CTRL_ADDR_WIDTH = AXIL_CTRL_ADDR_WIDTH,

    // Ethernet interface configuration
    parameter XGMII_DATA_WIDTH = 64,
    parameter XGMII_CTRL_WIDTH = XGMII_DATA_WIDTH/8,
    parameter AXIS_ETH_DATA_WIDTH = XGMII_DATA_WIDTH,
    parameter AXIS_ETH_KEEP_WIDTH = AXIS_ETH_DATA_WIDTH/8,
    parameter AXIS_ETH_SYNC_DATA_WIDTH = AXIS_ETH_DATA_WIDTH*2,
    parameter AXIS_ETH_TX_USER_WIDTH = TX_TAG_WIDTH + 1,
    parameter AXIS_ETH_RX_USER_WIDTH = (PTP_TS_ENABLE ? PTP_TS_WIDTH : 0) + 1,
    parameter AXIS_ETH_TX_PIPELINE = 4,
    parameter AXIS_ETH_TX_FIFO_PIPELINE = 4,
    parameter AXIS_ETH_TX_TS_PIPELINE = 4,
    parameter AXIS_ETH_RX_PIPELINE = 4,
    parameter AXIS_ETH_RX_FIFO_PIPELINE = 4,

    // Statistics retained only for compatibility
    parameter STAT_ENABLE = 1,
    parameter STAT_DMA_ENABLE = 1,
    parameter STAT_PCIE_ENABLE = 1,
    parameter STAT_INC_WIDTH = 24,
    parameter STAT_ID_WIDTH = 12,

    // bump-in-wire CDC FIFO depth
    parameter BIW_FIFO_DEPTH = 4096
)
(
    /*
     * Clock: 250 MHz domain from top level
     * Only used for control/gpio/passive housekeeping in this simplified core
     */
    input  wire                                         clk_250mhz,
    input  wire                                         rst_250mhz,

    /*
     * PTP clock inputs (kept for compatibility; not actively used in this simplified bridge)
     */
    input  wire                                         ptp_clk,
    input  wire                                         ptp_rst,
    input  wire                                         ptp_sample_clk,

    /*
     * GPIO
     */
    input  wire [3:0]                                   sw,
    output wire [2:0]                                   led,
    output wire [QSFP_CNT-1:0]                          qsfp_led_act,
    output wire [QSFP_CNT-1:0]                          qsfp_led_stat_g,
    output wire [QSFP_CNT-1:0]                          qsfp_led_stat_y,

    /*
     * I2C
     */
    input  wire                                         i2c_scl_i,
    output wire                                         i2c_scl_o,
    output wire                                         i2c_scl_t,
    input  wire                                         i2c_sda_i,
    output wire                                         i2c_sda_o,
    output wire                                         i2c_sda_t,

    /*
     * Ethernet: QSFP-side XGMII from top-level PHY wrappers
     */
    input  wire [CH_CNT-1:0]                            qsfp_tx_clk,
    input  wire [CH_CNT-1:0]                            qsfp_tx_rst,
    output wire [CH_CNT*XGMII_DATA_WIDTH-1:0]           qsfp_txd,
    output wire [CH_CNT*XGMII_CTRL_WIDTH-1:0]           qsfp_txc,
    output wire [CH_CNT-1:0]                            qsfp_cfg_tx_prbs31_enable,

    input  wire [CH_CNT-1:0]                            qsfp_rx_clk,
    input  wire [CH_CNT-1:0]                            qsfp_rx_rst,
    input  wire [CH_CNT*XGMII_DATA_WIDTH-1:0]           qsfp_rxd,
    input  wire [CH_CNT*XGMII_CTRL_WIDTH-1:0]           qsfp_rxc,
    output wire [CH_CNT-1:0]                            qsfp_cfg_rx_prbs31_enable,
    input  wire [CH_CNT*7-1:0]                          qsfp_rx_error_count,
    input  wire [CH_CNT-1:0]                            qsfp_rx_status,

    /*
     * QSFP DRP - left inactive in this simplified bridge
     */
    input  wire [QSFP_CNT-1:0]                          qsfp_drp_clk,
    input  wire [QSFP_CNT-1:0]                          qsfp_drp_rst,
    output wire [QSFP_CNT*24-1:0]                       qsfp_drp_addr,
    output wire [QSFP_CNT*16-1:0]                       qsfp_drp_di,
    output wire [QSFP_CNT-1:0]                          qsfp_drp_en,
    output wire [QSFP_CNT-1:0]                          qsfp_drp_we,
    input  wire [QSFP_CNT*16-1:0]                       qsfp_drp_do,
    input  wire [QSFP_CNT-1:0]                          qsfp_drp_rdy,

    /*
     * QSFP module control
     */
    input  wire [QSFP_CNT-1:0]                          qsfp_modprsl,
    output wire [QSFP_CNT-1:0]                          qsfp_modsell,
    output wire [QSFP_CNT-1:0]                          qsfp_resetl,
    input  wire [QSFP_CNT-1:0]                          qsfp_intl,
    output wire [QSFP_CNT-1:0]                          qsfp_lpmode,

    /*
     * DDR interface - unused, tied off
     */
    input  wire [DDR_CH-1:0]                            ddr_clk,
    input  wire [DDR_CH-1:0]                            ddr_rst,
    output wire [DDR_CH*AXI_DDR_ID_WIDTH-1:0]           m_axi_ddr_awid,
    output wire [DDR_CH*AXI_DDR_ADDR_WIDTH-1:0]         m_axi_ddr_awaddr,
    output wire [DDR_CH*8-1:0]                          m_axi_ddr_awlen,
    output wire [DDR_CH*3-1:0]                          m_axi_ddr_awsize,
    output wire [DDR_CH*2-1:0]                          m_axi_ddr_awburst,
    output wire [DDR_CH-1:0]                            m_axi_ddr_awlock,
    output wire [DDR_CH*4-1:0]                          m_axi_ddr_awcache,
    output wire [DDR_CH*3-1:0]                          m_axi_ddr_awprot,
    output wire [DDR_CH*4-1:0]                          m_axi_ddr_awqos,
    output wire [DDR_CH-1:0]                            m_axi_ddr_awvalid,
    input  wire [DDR_CH-1:0]                            m_axi_ddr_awready,
    output wire [DDR_CH*AXI_DDR_DATA_WIDTH-1:0]         m_axi_ddr_wdata,
    output wire [DDR_CH*AXI_DDR_STRB_WIDTH-1:0]         m_axi_ddr_wstrb,
    output wire [DDR_CH-1:0]                            m_axi_ddr_wlast,
    output wire [DDR_CH-1:0]                            m_axi_ddr_wvalid,
    input  wire [DDR_CH-1:0]                            m_axi_ddr_wready,
    input  wire [DDR_CH*AXI_DDR_ID_WIDTH-1:0]           m_axi_ddr_bid,
    input  wire [DDR_CH*2-1:0]                          m_axi_ddr_bresp,
    input  wire [DDR_CH-1:0]                            m_axi_ddr_bvalid,
    output wire [DDR_CH-1:0]                            m_axi_ddr_bready,
    output wire [DDR_CH*AXI_DDR_ID_WIDTH-1:0]           m_axi_ddr_arid,
    output wire [DDR_CH*AXI_DDR_ADDR_WIDTH-1:0]         m_axi_ddr_araddr,
    output wire [DDR_CH*8-1:0]                          m_axi_ddr_arlen,
    output wire [DDR_CH*3-1:0]                          m_axi_ddr_arsize,
    output wire [DDR_CH*2-1:0]                          m_axi_ddr_arburst,
    output wire [DDR_CH-1:0]                            m_axi_ddr_arlock,
    output wire [DDR_CH*4-1:0]                          m_axi_ddr_arcache,
    output wire [DDR_CH*3-1:0]                          m_axi_ddr_arprot,
    output wire [DDR_CH*4-1:0]                          m_axi_ddr_arqos,
    output wire [DDR_CH-1:0]                            m_axi_ddr_arvalid,
    input  wire [DDR_CH-1:0]                            m_axi_ddr_arready,
    input  wire [DDR_CH*AXI_DDR_ID_WIDTH-1:0]           m_axi_ddr_rid,
    input  wire [DDR_CH*AXI_DDR_DATA_WIDTH-1:0]         m_axi_ddr_rdata,
    input  wire [DDR_CH*2-1:0]                          m_axi_ddr_rresp,
    input  wire [DDR_CH-1:0]                            m_axi_ddr_rlast,
    input  wire [DDR_CH-1:0]                            m_axi_ddr_rvalid,
    output wire [DDR_CH-1:0]                            m_axi_ddr_rready,
    input  wire [DDR_CH-1:0]                            ddr_status,

    /*
     * HBM interface - unused, omitted logically but kept at top-level compatibility by top module
     * There are no explicit HBM ports in this simplified core.
     */

    /*
     * QSPI flash - left inactive, boot disabled
     */
    output wire                                         fpga_boot,
    output wire                                         qspi_clk,
    input  wire [3:0]                                   qspi_dq_i,
    output wire [3:0]                                   qspi_dq_o,
    output wire [3:0]                                   qspi_dq_oe,
    output wire                                         qspi_cs,

    /*
     * AXI-Lite to CMS - left inactive
     */
    output wire                                         m_axil_cms_clk,
    output wire                                         m_axil_cms_rst,
    output wire [17:0]                                  m_axil_cms_awaddr,
    output wire [2:0]                                   m_axil_cms_awprot,
    output wire                                         m_axil_cms_awvalid,
    input  wire                                         m_axil_cms_awready,
    output wire [31:0]                                  m_axil_cms_wdata,
    output wire [3:0]                                   m_axil_cms_wstrb,
    output wire                                         m_axil_cms_wvalid,
    input  wire                                         m_axil_cms_wready,
    input  wire [1:0]                                   m_axil_cms_bresp,
    input  wire                                         m_axil_cms_bvalid,
    output wire                                         m_axil_cms_bready,
    output wire [17:0]                                  m_axil_cms_araddr,
    output wire [2:0]                                   m_axil_cms_arprot,
    output wire                                         m_axil_cms_arvalid,
    input  wire                                         m_axil_cms_arready,
    input  wire [31:0]                                  m_axil_cms_rdata,
    input  wire [1:0]                                   m_axil_cms_rresp,
    input  wire                                         m_axil_cms_rvalid,
    output wire                                         m_axil_cms_rready
);

// ============================================================================
// Basic checks
// ============================================================================

initial begin
    if (PORT_COUNT != 2) begin
        $error("This simplified bump-in-wire fpga_core expects PORT_COUNT=2");
        $finish;
    end
end

// ============================================================================
// Safe tie-offs / simple control outputs
// ============================================================================

assign i2c_scl_o = 1'b1;
assign i2c_scl_t = 1'b1;
assign i2c_sda_o = 1'b1;
assign i2c_sda_t = 1'b1;

assign fpga_boot = 1'b0;
assign qspi_clk  = 1'b0;
assign qspi_dq_o = 4'd0;
assign qspi_dq_oe = 4'd0;
assign qspi_cs   = 1'b1;

// CMS AXI-Lite inactive
assign m_axil_cms_clk     = clk_250mhz;
assign m_axil_cms_rst     = rst_250mhz;
assign m_axil_cms_awaddr  = 18'd0;
assign m_axil_cms_awprot  = 3'd0;
assign m_axil_cms_awvalid = 1'b0;
assign m_axil_cms_wdata   = 32'd0;
assign m_axil_cms_wstrb   = 4'd0;
assign m_axil_cms_wvalid  = 1'b0;
assign m_axil_cms_bready  = 1'b0;
assign m_axil_cms_araddr  = 18'd0;
assign m_axil_cms_arprot  = 3'd0;
assign m_axil_cms_arvalid = 1'b0;
assign m_axil_cms_rready  = 1'b0;

// DDR inactive
assign m_axi_ddr_awid    = {DDR_CH*AXI_DDR_ID_WIDTH{1'b0}};
assign m_axi_ddr_awaddr  = {DDR_CH*AXI_DDR_ADDR_WIDTH{1'b0}};
assign m_axi_ddr_awlen   = {DDR_CH*8{1'b0}};
assign m_axi_ddr_awsize  = {DDR_CH*3{1'b0}};
assign m_axi_ddr_awburst = {DDR_CH*2{1'b0}};
assign m_axi_ddr_awlock  = {DDR_CH{1'b0}};
assign m_axi_ddr_awcache = {DDR_CH*4{1'b0}};
assign m_axi_ddr_awprot  = {DDR_CH*3{1'b0}};
assign m_axi_ddr_awqos   = {DDR_CH*4{1'b0}};
assign m_axi_ddr_awvalid = {DDR_CH{1'b0}};
assign m_axi_ddr_wdata   = {DDR_CH*AXI_DDR_DATA_WIDTH{1'b0}};
assign m_axi_ddr_wstrb   = {DDR_CH*AXI_DDR_STRB_WIDTH{1'b0}};
assign m_axi_ddr_wlast   = {DDR_CH{1'b0}};
assign m_axi_ddr_wvalid  = {DDR_CH{1'b0}};
assign m_axi_ddr_bready  = {DDR_CH{1'b0}};
assign m_axi_ddr_arid    = {DDR_CH*AXI_DDR_ID_WIDTH{1'b0}};
assign m_axi_ddr_araddr  = {DDR_CH*AXI_DDR_ADDR_WIDTH{1'b0}};
assign m_axi_ddr_arlen   = {DDR_CH*8{1'b0}};
assign m_axi_ddr_arsize  = {DDR_CH*3{1'b0}};
assign m_axi_ddr_arburst = {DDR_CH*2{1'b0}};
assign m_axi_ddr_arlock  = {DDR_CH{1'b0}};
assign m_axi_ddr_arcache = {DDR_CH*4{1'b0}};
assign m_axi_ddr_arprot  = {DDR_CH*3{1'b0}};
assign m_axi_ddr_arqos   = {DDR_CH*4{1'b0}};
assign m_axi_ddr_arvalid = {DDR_CH{1'b0}};
assign m_axi_ddr_rready  = {DDR_CH{1'b0}};

// DRP inactive
assign qsfp_drp_addr = {QSFP_CNT*24{1'b0}};
assign qsfp_drp_di   = {QSFP_CNT*16{1'b0}};
assign qsfp_drp_en   = {QSFP_CNT{1'b0}};
assign qsfp_drp_we   = {QSFP_CNT{1'b0}};

// Module control: release module reset, normal power mode
assign qsfp_modsell = {QSFP_CNT{1'b0}};
assign qsfp_resetl  = {QSFP_CNT{1'b1}};
assign qsfp_lpmode  = {QSFP_CNT{1'b0}};

assign qsfp_cfg_tx_prbs31_enable = {CH_CNT{1'b0}};
assign qsfp_cfg_rx_prbs31_enable = {CH_CNT{1'b0}};

// LEDs: simple status indication
assign qsfp_led_act    = {qsfp_rx_status[4], qsfp_rx_status[0]};
assign qsfp_led_stat_g = {QSFP_CNT{1'b1}};
assign qsfp_led_stat_y = {QSFP_CNT{1'b0}};
assign led             = {1'b0, qsfp_rx_status[4], qsfp_rx_status[0]};

// ============================================================================
// PHY lane -> logical port mapping
// ============================================================================

wire [PORT_COUNT-1:0]                    port_xgmii_tx_clk;
wire [PORT_COUNT-1:0]                    port_xgmii_tx_rst;
wire [PORT_COUNT*XGMII_DATA_WIDTH-1:0]   port_xgmii_txd;
wire [PORT_COUNT*XGMII_CTRL_WIDTH-1:0]   port_xgmii_txc;
wire [PORT_COUNT-1:0]                    port_tx_status;

wire [PORT_COUNT-1:0]                    port_xgmii_rx_clk;
wire [PORT_COUNT-1:0]                    port_xgmii_rx_rst;
wire [PORT_COUNT*XGMII_DATA_WIDTH-1:0]   port_xgmii_rxd;
wire [PORT_COUNT*XGMII_CTRL_WIDTH-1:0]   port_xgmii_rxc;
wire [PORT_COUNT-1:0]                    port_rx_status;

mqnic_port_map_phy_xgmii #(
    .PHY_COUNT(CH_CNT),
    .PORT_MASK(PORT_MASK),
    .PORT_GROUP_SIZE(4),
    .IF_COUNT(IF_COUNT),
    .PORTS_PER_IF(PORTS_PER_IF),
    .PORT_COUNT(PORT_COUNT),
    .XGMII_DATA_WIDTH(XGMII_DATA_WIDTH),
    .XGMII_CTRL_WIDTH(XGMII_CTRL_WIDTH)
)
port_map_inst (
    .phy_xgmii_tx_clk(qsfp_tx_clk),
    .phy_xgmii_tx_rst(qsfp_tx_rst),
    .phy_xgmii_txd(qsfp_txd),
    .phy_xgmii_txc(qsfp_txc),
    .phy_tx_status({CH_CNT{1'b1}}),

    .phy_xgmii_rx_clk(qsfp_rx_clk),
    .phy_xgmii_rx_rst(qsfp_rx_rst),
    .phy_xgmii_rxd(qsfp_rxd),
    .phy_xgmii_rxc(qsfp_rxc),
    .phy_rx_status(qsfp_rx_status),

    .port_xgmii_tx_clk(port_xgmii_tx_clk),
    .port_xgmii_tx_rst(port_xgmii_tx_rst),
    .port_xgmii_txd(port_xgmii_txd),
    .port_xgmii_txc(port_xgmii_txc),
    .port_tx_status(port_tx_status),

    .port_xgmii_rx_clk(port_xgmii_rx_clk),
    .port_xgmii_rx_rst(port_xgmii_rx_rst),
    .port_xgmii_rxd(port_xgmii_rxd),
    .port_xgmii_rxc(port_xgmii_rxc),
    .port_rx_status(port_rx_status)
);

// ============================================================================
// AXIS wires around MACs
// ============================================================================

// MAC RX outputs
wire [PORT_COUNT*AXIS_ETH_DATA_WIDTH-1:0]  mac_rx_axis_tdata;
wire [PORT_COUNT*AXIS_ETH_KEEP_WIDTH-1:0]  mac_rx_axis_tkeep;
wire [PORT_COUNT-1:0]                      mac_rx_axis_tvalid;
wire [PORT_COUNT-1:0]                      mac_rx_axis_tready;
wire [PORT_COUNT-1:0]                      mac_rx_axis_tlast;
wire [PORT_COUNT*AXIS_ETH_RX_USER_WIDTH-1:0] mac_rx_axis_tuser;

// MAC TX inputs
wire [PORT_COUNT*AXIS_ETH_DATA_WIDTH-1:0]  mac_tx_axis_tdata;
wire [PORT_COUNT*AXIS_ETH_KEEP_WIDTH-1:0]  mac_tx_axis_tkeep;
wire [PORT_COUNT-1:0]                      mac_tx_axis_tvalid;
wire [PORT_COUNT-1:0]                      mac_tx_axis_tready;
wire [PORT_COUNT-1:0]                      mac_tx_axis_tlast;
wire [PORT_COUNT*AXIS_ETH_TX_USER_WIDTH-1:0] mac_tx_axis_tuser;

// ============================================================================
// MAC instances
// ============================================================================

wire [PORT_COUNT*2-1:0] mac_tx_start_packet;
wire [PORT_COUNT-1:0]   mac_tx_error_underflow;

genvar n;
generate
    for (n = 0; n < PORT_COUNT; n = n + 1) begin : macs

        wire [95:0] tx_ptp_ts_zero;
        wire [95:0] rx_ptp_ts_zero;
        wire [95:0] tx_axis_ptp_ts_int;
        wire [15:0] tx_axis_ptp_ts_tag_int;
        wire        tx_axis_ptp_ts_valid_int;
        
        assign tx_ptp_ts_zero = 96'd0;
        assign rx_ptp_ts_zero = 96'd0;

        eth_mac_10g #(
            .DATA_WIDTH(XGMII_DATA_WIDTH),
            .KEEP_WIDTH(AXIS_ETH_KEEP_WIDTH),
            .CTRL_WIDTH(XGMII_CTRL_WIDTH),
            .ENABLE_PADDING(ENABLE_PADDING),
            .ENABLE_DIC(ENABLE_DIC),
            .MIN_FRAME_LENGTH(MIN_FRAME_LENGTH),

            .TX_PTP_TS_ENABLE(0),
            .TX_PTP_TS_WIDTH(96),
            .TX_PTP_TS_CTRL_IN_TUSER(0),
            .TX_PTP_TAG_ENABLE(0),
            .TX_PTP_TAG_WIDTH(16),

            .RX_PTP_TS_ENABLE(0),
            .RX_PTP_TS_WIDTH(96),

            .TX_USER_WIDTH(AXIS_ETH_TX_USER_WIDTH),
            .RX_USER_WIDTH(AXIS_ETH_RX_USER_WIDTH),

            .PFC_ENABLE(0),
            .PAUSE_ENABLE(0)
        )
        eth_mac_10g_inst (
            .rx_clk(port_xgmii_rx_clk[n]),
            .rx_rst(port_xgmii_rx_rst[n]),
            .tx_clk(port_xgmii_tx_clk[n]),
            .tx_rst(port_xgmii_tx_rst[n]),

            /*
             * AXI input
             */
            .tx_axis_tdata(mac_tx_axis_tdata[n*AXIS_ETH_DATA_WIDTH +: AXIS_ETH_DATA_WIDTH]),
            .tx_axis_tkeep(mac_tx_axis_tkeep[n*AXIS_ETH_KEEP_WIDTH +: AXIS_ETH_KEEP_WIDTH]),
            .tx_axis_tvalid(mac_tx_axis_tvalid[n]),
            .tx_axis_tready(mac_tx_axis_tready[n]),
            .tx_axis_tlast(mac_tx_axis_tlast[n]),
            .tx_axis_tuser(mac_tx_axis_tuser[n*AXIS_ETH_TX_USER_WIDTH +: AXIS_ETH_TX_USER_WIDTH]),

            /*
             * AXI output
             */
            .rx_axis_tdata(mac_rx_axis_tdata[n*AXIS_ETH_DATA_WIDTH +: AXIS_ETH_DATA_WIDTH]),
            .rx_axis_tkeep(mac_rx_axis_tkeep[n*AXIS_ETH_KEEP_WIDTH +: AXIS_ETH_KEEP_WIDTH]),
            .rx_axis_tvalid(mac_rx_axis_tvalid[n]),
            .rx_axis_tlast(mac_rx_axis_tlast[n]),
            .rx_axis_tuser(mac_rx_axis_tuser[n*AXIS_ETH_RX_USER_WIDTH +: AXIS_ETH_RX_USER_WIDTH]),

            /*
             * XGMII interface input
             */
            .xgmii_rxd(port_xgmii_rxd[n*XGMII_DATA_WIDTH +: XGMII_DATA_WIDTH]),
            .xgmii_rxc(port_xgmii_rxc[n*XGMII_CTRL_WIDTH +: XGMII_CTRL_WIDTH]),
            .xgmii_txd(port_xgmii_txd[n*XGMII_DATA_WIDTH +: XGMII_DATA_WIDTH]),
            .xgmii_txc(port_xgmii_txc[n*XGMII_CTRL_WIDTH +: XGMII_CTRL_WIDTH]),

            /*
             * PTP
             */
            .tx_ptp_ts(tx_ptp_ts_zero),
            .rx_ptp_ts(rx_ptp_ts_zero),
            .tx_axis_ptp_ts(tx_axis_ptp_ts_int),
            .tx_axis_ptp_ts_tag(tx_axis_ptp_ts_tag_int),
            .tx_axis_ptp_ts_valid(tx_axis_ptp_ts_valid_int),

            /*
             * Link-level Flow Control (LFC)
             */
            .tx_lfc_req(1'b0),
            .tx_lfc_resend(1'b0),
            .rx_lfc_en(1'b0),
            .rx_lfc_req(),
            .rx_lfc_ack(1'b0),

            /*
             * Priority Flow Control (PFC)
             */
            .tx_pfc_req(8'd0),
            .tx_pfc_resend(1'b0),
            .rx_pfc_en(8'd0),
            .rx_pfc_req(),
            .rx_pfc_ack(8'd0),

            /*
             * Pause interface
             */
            .tx_lfc_pause_en(1'b0),
            .tx_pause_req(1'b0),
            .tx_pause_ack(),
            
           /*
            *   Status input
            */    
            .tx_cntr(tx_start_cntr[(n == 0) ? 1 : 0]),
            
            /*
             * Status output
             */
            .tx_start_packet(mac_tx_start_packet[n*2 +: 2]),
            .tx_error_underflow(mac_tx_error_underflow[n]),
            .rx_start_packet(),
            .rx_error_bad_frame(),
            .rx_error_bad_fcs(),
            .stat_tx_mcf(),
            .stat_rx_mcf(),
            .stat_tx_lfc_pkt(),
            .stat_tx_lfc_xon(),
            .stat_tx_lfc_xoff(),
            .stat_tx_lfc_paused(),
            .stat_tx_pfc_pkt(),
            .stat_tx_pfc_xon(),
            .stat_tx_pfc_xoff(),
            .stat_tx_pfc_paused(),
            .stat_rx_lfc_pkt(),
            .stat_rx_lfc_xon(),
            .stat_rx_lfc_xoff(),
            .stat_rx_lfc_paused(),
            .stat_rx_pfc_pkt(),
            .stat_rx_pfc_xon(),
            .stat_rx_pfc_xoff(),
            .stat_rx_pfc_paused(),

            /*
             * Configuration
             */
            .cfg_ifg(8'd12),
            .cfg_tx_enable(1'b1),
            .cfg_rx_enable(1'b1),
            .cfg_mcf_rx_eth_dst_mcast(48'd0),
            .cfg_mcf_rx_check_eth_dst_mcast(1'b0),
            .cfg_mcf_rx_eth_dst_ucast(48'd0),
            .cfg_mcf_rx_check_eth_dst_ucast(1'b0),
            .cfg_mcf_rx_eth_src(48'd0),
            .cfg_mcf_rx_check_eth_src(1'b0),
            .cfg_mcf_rx_eth_type(16'd0),
            .cfg_mcf_rx_opcode_lfc(16'd0),
            .cfg_mcf_rx_check_opcode_lfc(1'b0),
            .cfg_mcf_rx_opcode_pfc(16'd0),
            .cfg_mcf_rx_check_opcode_pfc(1'b0),
            .cfg_mcf_rx_forward(1'b0),
            .cfg_mcf_rx_enable(1'b0),
            .cfg_tx_lfc_eth_dst(48'd0),
            .cfg_tx_lfc_eth_src(48'd0),
            .cfg_tx_lfc_eth_type(16'd0),
            .cfg_tx_lfc_opcode(16'd0),
            .cfg_tx_lfc_en(1'b0),
            .cfg_tx_lfc_quanta(16'd0),
            .cfg_tx_lfc_refresh(16'd0),
            .cfg_tx_pfc_eth_dst(48'd0),
            .cfg_tx_pfc_eth_src(48'd0),
            .cfg_tx_pfc_eth_type(16'd0),
            .cfg_tx_pfc_opcode(16'd0),
            .cfg_tx_pfc_en(1'b0),
            .cfg_tx_pfc_quanta({8{16'd0}}),
            .cfg_tx_pfc_refresh({8{16'd0}}),
            .cfg_rx_lfc_opcode(16'd0),
            .cfg_rx_lfc_en(1'b0),
            .cfg_rx_pfc_opcode(16'd0),
            .cfg_rx_pfc_en(1'b0),
            
            .in_cntr(in_counter[n]),
            .out_cntr(out_counter[n])
        );

    end
endgenerate


reg [15:0] tx_start_cntr [0:PORT_COUNT-1];

always @(posedge port_xgmii_tx_clk[1]) begin
    if (port_xgmii_tx_rst[1])
        tx_start_cntr[1] <= 16'd0;
    else if (mac_tx_error_underflow[1])
        tx_start_cntr[1] <= tx_start_cntr[1] + 1'b1;
end

always @(posedge port_xgmii_tx_clk[0]) begin
    if (port_xgmii_tx_rst[0])
        tx_start_cntr[0] <= 16'd0;
    else if (mac_tx_error_underflow[0])
        tx_start_cntr[0] <= tx_start_cntr[0] + 1'b1;
end

// ============================================================================
// Direction 0 -> 1 : RX MAC0 -> edit hook -> async FIFO -> TX MAC1
// Direction 1 -> 0 : RX MAC1 -> edit hook -> async FIFO -> TX MAC0
// ============================================================================

localparam BIW_RX_USER_TO_TX_USER_WIDTH =
    (AXIS_ETH_RX_USER_WIDTH > AXIS_ETH_TX_USER_WIDTH) ? AXIS_ETH_TX_USER_WIDTH : AXIS_ETH_RX_USER_WIDTH;

// ---------- 0 -> 1 ----------


wire [AXIS_ETH_DATA_WIDTH-1:0]  f01_tdata;
wire [AXIS_ETH_KEEP_WIDTH-1:0]  f01_tkeep;
wire                            f01_tvalid;
wire                            f01_tready;
wire                            f01_tlast;
wire [AXIS_ETH_TX_USER_WIDTH-1:0] f01_tuser;
wire [15:0] in_counter[0:1];
wire [15:0] out_counter[0:1];
// packet edit hook


// async fifo / CDC
axis_async_packet_fifo #(
    .DATA_WIDTH(AXIS_ETH_DATA_WIDTH),
    .KEEP_WIDTH(AXIS_ETH_KEEP_WIDTH),
    .USER_WIDTH(AXIS_ETH_TX_USER_WIDTH),
    .DEPTH(BIW_FIFO_DEPTH)
)
fifo_0_to_1_inst (
    .s_clk(port_xgmii_rx_clk[0]),
    .s_rst(port_xgmii_rx_rst[0]),
    .m_clk(port_xgmii_tx_clk[1]),
    .m_rst(port_xgmii_tx_rst[1]),

    .s_axis_tdata(mac_rx_axis_tdata[0*AXIS_ETH_DATA_WIDTH +: AXIS_ETH_DATA_WIDTH]),
    .s_axis_tkeep(mac_rx_axis_tkeep[0*AXIS_ETH_KEEP_WIDTH +: AXIS_ETH_KEEP_WIDTH]),
    .s_axis_tvalid(mac_rx_axis_tvalid[0]),
    .s_axis_tready(mac_rx_axis_tready[0]),
    .s_axis_tlast(mac_rx_axis_tlast[0]),
    .s_axis_tuser(mac_rx_axis_tuser[0*AXIS_ETH_RX_USER_WIDTH +: AXIS_ETH_RX_USER_WIDTH]),

    .m_axis_tdata(f01_tdata),
    .m_axis_tkeep(f01_tkeep),
    .m_axis_tvalid(f01_tvalid),
    .m_axis_tready(f01_tready),
    .m_axis_tlast(f01_tlast),
    .m_axis_tuser(f01_tuser),
    
    .in_cntr(in_counter[0]),
    .out_cntr(out_counter[0])
);

// ---------- 1 -> 0 ----------


wire [AXIS_ETH_DATA_WIDTH-1:0]  f10_tdata;
wire [AXIS_ETH_KEEP_WIDTH-1:0]  f10_tkeep;
wire                            f10_tvalid;
wire                            f10_tready;
wire                            f10_tlast;
wire [AXIS_ETH_TX_USER_WIDTH-1:0] f10_tuser;



axis_async_packet_fifo #(
    .DATA_WIDTH(AXIS_ETH_DATA_WIDTH),
    .KEEP_WIDTH(AXIS_ETH_KEEP_WIDTH),
    .USER_WIDTH(AXIS_ETH_TX_USER_WIDTH),
    .DEPTH(BIW_FIFO_DEPTH)
)
fifo_1_to_0_inst (
    .s_clk(port_xgmii_rx_clk[1]),
    .s_rst(port_xgmii_rx_rst[1]),
    .m_clk(port_xgmii_tx_clk[0]),
    .m_rst(port_xgmii_tx_rst[0]),

    .s_axis_tdata(mac_rx_axis_tdata[1*AXIS_ETH_DATA_WIDTH +: AXIS_ETH_DATA_WIDTH]),
    .s_axis_tkeep(mac_rx_axis_tkeep[1*AXIS_ETH_KEEP_WIDTH +: AXIS_ETH_KEEP_WIDTH]),
    .s_axis_tvalid(mac_rx_axis_tvalid[1]),
    .s_axis_tready(mac_rx_axis_tready[1]),
    .s_axis_tlast(mac_rx_axis_tlast[1]),
    .s_axis_tuser(mac_rx_axis_tuser[1*AXIS_ETH_RX_USER_WIDTH +: AXIS_ETH_RX_USER_WIDTH]),

    .m_axis_tdata(f10_tdata),
    .m_axis_tkeep(f10_tkeep),
    .m_axis_tvalid(f10_tvalid),
    .m_axis_tready(f10_tready),
    .m_axis_tlast(f10_tlast),
    .m_axis_tuser(f10_tuser),
    
    .in_cntr(in_counter[1]),
    .out_cntr(out_counter[1])
);

// connect FIFO outputs into opposite TX MACs
assign mac_tx_axis_tdata[1*AXIS_ETH_DATA_WIDTH +: AXIS_ETH_DATA_WIDTH] = f01_tdata;
assign mac_tx_axis_tkeep[1*AXIS_ETH_KEEP_WIDTH +: AXIS_ETH_KEEP_WIDTH] = f01_tkeep;
assign mac_tx_axis_tvalid[1] = f01_tvalid;
assign f01_tready            = mac_tx_axis_tready[1];
assign mac_tx_axis_tlast[1]  = f01_tlast;
assign mac_tx_axis_tuser[1*AXIS_ETH_TX_USER_WIDTH +: AXIS_ETH_TX_USER_WIDTH] = f01_tuser;

assign mac_tx_axis_tdata[0*AXIS_ETH_DATA_WIDTH +: AXIS_ETH_DATA_WIDTH] = f10_tdata;
assign mac_tx_axis_tkeep[0*AXIS_ETH_KEEP_WIDTH +: AXIS_ETH_KEEP_WIDTH] = f10_tkeep;
assign mac_tx_axis_tvalid[0] = f10_tvalid;
assign f10_tready            = mac_tx_axis_tready[0];
assign mac_tx_axis_tlast[0]  = f10_tlast;
assign mac_tx_axis_tuser[0*AXIS_ETH_TX_USER_WIDTH +: AXIS_ETH_TX_USER_WIDTH] = f10_tuser;

endmodule


// ============================================================================
// AXIS async packet FIFO using Xilinx XPM async FIFO
// This is the CDC boundary between RX MAC clock and TX MAC clock
// ============================================================================

module axis_async_packet_fifo #
(
    parameter DATA_WIDTH = 64,
    parameter KEEP_WIDTH = DATA_WIDTH/8,
    parameter USER_WIDTH = 1,
    parameter DEPTH = 4096
)
(
    input  wire                         s_clk,
    input  wire                         s_rst,
    input  wire                         m_clk,
    input  wire                         m_rst,

    input  wire [DATA_WIDTH-1:0]        s_axis_tdata,
    input  wire [KEEP_WIDTH-1:0]        s_axis_tkeep,
    input  wire                         s_axis_tvalid,
    output wire                         s_axis_tready,
    input  wire                         s_axis_tlast,
    input  wire [USER_WIDTH-1:0]        s_axis_tuser,

    output wire [DATA_WIDTH-1:0]        m_axis_tdata,
    output wire [KEEP_WIDTH-1:0]        m_axis_tkeep,
    output wire                         m_axis_tvalid,
    input  wire                         m_axis_tready,
    output wire                         m_axis_tlast,
    output wire [USER_WIDTH-1:0]        m_axis_tuser,
    
    output reg [15:0] in_cntr,
    output reg  [15:0] out_cntr
);

localparam FIFO_WIDTH = DATA_WIDTH + KEEP_WIDTH + 1 + USER_WIDTH;

wire [FIFO_WIDTH-1:0] fifo_din;
wire [FIFO_WIDTH-1:0] fifo_dout;
wire fifo_full;
wire fifo_empty;
wire wr_rst_busy;
wire rd_rst_busy;

assign fifo_din = {s_axis_tuser, s_axis_tlast, s_axis_tkeep, s_axis_tdata};

wire fifo_rst;
wire fifo_s_run;
wire fifo_m_run;


biw_fifo_reset_ctrl reset_ctrl_inst (
    .s_clk(s_clk),
    .s_rst(s_rst),
    .m_clk(m_clk),
    .m_rst(m_rst),
    .wr_rst_busy(wr_rst_busy),
    .rd_rst_busy(rd_rst_busy),
    .fifo_rst(fifo_rst),
    .s_run(fifo_s_run),
    .m_run(fifo_m_run)
);

reg packet_active;
assign s_axis_tready = fifo_s_run && !fifo_rst && !fifo_full && !wr_rst_busy;
assign m_axis_tvalid =
    fifo_m_run &&
    packet_active &&
    !fifo_empty &&
    !rd_rst_busy;

assign {m_axis_tuser, m_axis_tlast, m_axis_tkeep, m_axis_tdata} = fifo_dout;

xpm_fifo_async #(
    .FIFO_MEMORY_TYPE("auto"),
    .ECC_MODE("no_ecc"),
    .FIFO_WRITE_DEPTH(DEPTH),
    .WRITE_DATA_WIDTH(FIFO_WIDTH),
    .READ_DATA_WIDTH(FIFO_WIDTH),
    .WR_DATA_COUNT_WIDTH(1),
    .RD_DATA_COUNT_WIDTH(1),
    .PROG_FULL_THRESH(10),
    .PROG_EMPTY_THRESH(10),
    .DOUT_RESET_VALUE("0"),
    .FULL_RESET_VALUE(0),
    .READ_MODE("fwft"),
    .FIFO_READ_LATENCY(0),
    .CDC_SYNC_STAGES(2),
    .WAKEUP_TIME(0),
    .RELATED_CLOCKS(0),
    .SIM_ASSERT_CHK(1),
    .USE_ADV_FEATURES("0707")
)
xpm_fifo_async_inst (
    .rst(fifo_rst),

    .wr_clk(s_clk),
    .wr_en(s_axis_tvalid && s_axis_tready),
    .din(fifo_din),
    .full(fifo_full),
    .prog_full(),
    .wr_data_count(),
    .overflow(),
    .wr_rst_busy(wr_rst_busy),

    .rd_clk(m_clk),
    .rd_en(m_axis_tvalid && m_axis_tready),
    .dout(fifo_dout),
    .empty(fifo_empty),
    .prog_empty(),
    .rd_data_count(),
    .underflow(),
    .rd_rst_busy(rd_rst_busy),

    .sleep(1'b0),
    .injectsbiterr(1'b0),
    .injectdbiterr(1'b0),
    .sbiterr(),
    .dbiterr()
);
  
  wire       packet_token_full;
wire       packet_token_empty;
wire [0:0] packet_token_dout;

wire packet_token_wr_en;
wire packet_token_rd_en;



assign packet_token_wr_en =
    s_axis_tvalid &&
    s_axis_tready &&
    s_axis_tlast;
    
assign packet_token_rd_en =
    m_axis_tvalid &&
    m_axis_tready &&
    m_axis_tlast;
    
packet_token_fifo packet_token_fifo_inst (
    .rst(fifo_rst),

    .wr_clk(s_clk),
    .rd_clk(m_clk),

    .din(1'b1),

    .wr_en(packet_token_wr_en),
    .rd_en(packet_token_rd_en),

    .dout(packet_token_dout),

    .full(packet_token_full),
    .empty(packet_token_empty)
);

always @(posedge m_clk) begin
    if (m_rst || fifo_rst) begin
        packet_active <= 1'b0;
    end
    else begin

        // Start transmitting only when at least
        // one COMPLETE packet is available
        if (!packet_active &&
            !packet_token_empty &&
            !fifo_empty &&
            !rd_rst_busy &&
            fifo_m_run) begin

            packet_active <= 1'b1;
        end

        // Packet completely consumed by TX MAC
        if (m_axis_tvalid &&
            m_axis_tready &&
            m_axis_tlast) begin

            packet_active <= 1'b0;
        end
    end
end


  initial
  begin
    in_cntr <= 0;
    out_cntr <= 0;
  end
  
  always @(posedge s_clk) begin
    if (s_rst) begin
        in_cntr <= 16'd0;
    end
    else if (s_axis_tvalid && s_axis_tlast) begin
        in_cntr <= in_cntr + 1'b1;
    end
end

always @(posedge m_clk) begin
    if (in_cntr == 0) begin
        out_cntr <= 16'd0;
    end
    else if (m_axis_tvalid  && m_axis_tlast && m_axis_tready) begin
        out_cntr <= out_cntr + 1'b1;
    end
end

endmodule

`resetall