// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Mon Mar  9 02:08:16 2026
// Host        : atlas1 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_fb99_build_info_cmc_0_sim_netlist.v
// Design      : bd_fb99_build_info_cmc_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu200-fsgd2104-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder
   (\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ,
    \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] ,
    \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]_0 ,
    E,
    S_AXI_ARESETN_0,
    S_AXI_ACLK,
    S_AXI_ARESETN,
    start2,
    IP2Bus_WrAck,
    Q,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 ,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 ,
    bus2ip_rnw_i,
    \Scratch_reg[0] );
  output \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ;
  output \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] ;
  output \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]_0 ;
  output [0:0]E;
  output [0:0]S_AXI_ARESETN_0;
  input S_AXI_ACLK;
  input S_AXI_ARESETN;
  input start2;
  input IP2Bus_WrAck;
  input [4:0]Q;
  input \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 ;
  input \MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 ;
  input bus2ip_rnw_i;
  input [2:0]\Scratch_reg[0] ;

  wire Bus2IP_CS;
  wire [0:0]E;
  wire \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] ;
  wire \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]_0 ;
  wire IP2Bus_WrAck;
  wire \MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0 ;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 ;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 ;
  wire [4:0]Q;
  wire S_AXI_ACLK;
  wire S_AXI_ARESETN;
  wire [0:0]S_AXI_ARESETN_0;
  wire [2:0]\Scratch_reg[0] ;
  wire bus2ip_rnw_i;
  wire start2;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \IP2Bus_Ack[1]_i_1 
       (.I0(Bus2IP_CS),
        .I1(S_AXI_ARESETN),
        .O(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \IP2Bus_Data[31]_i_1 
       (.I0(S_AXI_ARESETN),
        .I1(Bus2IP_CS),
        .O(S_AXI_ARESETN_0));
  LUT6 #(
    .INIT(64'h0000000000005400)) 
    \MEM_DECODE_GEN[0].cs_out_i[0]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] ),
        .I1(Bus2IP_CS),
        .I2(start2),
        .I3(S_AXI_ARESETN),
        .I4(IP2Bus_WrAck),
        .I5(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]_0 ),
        .O(\MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0 ));
  FDRE \MEM_DECODE_GEN[0].cs_out_i_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0 ),
        .Q(Bus2IP_CS),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00004000)) 
    \Scratch[31]_i_1 
       (.I0(bus2ip_rnw_i),
        .I1(Bus2IP_CS),
        .I2(\Scratch_reg[0] [0]),
        .I3(\Scratch_reg[0] [2]),
        .I4(\Scratch_reg[0] [1]),
        .O(E));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    s_axi_bvalid_i_i_2
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 ),
        .I3(Q[0]),
        .I4(Q[4]),
        .I5(Q[3]),
        .O(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    s_axi_rvalid_i_i_2
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 ),
        .I3(Q[0]),
        .I4(Q[4]),
        .I5(Q[3]),
        .O(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif
   (SR,
    s_axi_rvalid_i_reg,
    s_axi_bvalid_i_reg,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0] ,
    S_AXI_RDATA,
    S_AXI_ARREADY,
    S_AXI_AWREADY,
    D,
    E,
    S_AXI_ARESETN_0,
    S_AXI_ACLK,
    S_AXI_ARVALID,
    S_AXI_ARESETN,
    IP2Bus_WrAck,
    S_AXI_RREADY,
    S_AXI_BREADY,
    S_AXI_AWVALID,
    S_AXI_WVALID,
    Q,
    \IP2Bus_Data_reg[31] ,
    S_AXI_ARADDR,
    S_AXI_AWADDR);
  output [0:0]SR;
  output s_axi_rvalid_i_reg;
  output s_axi_bvalid_i_reg;
  output \MEM_DECODE_GEN[0].cs_out_i_reg[0] ;
  output [31:0]S_AXI_RDATA;
  output S_AXI_ARREADY;
  output S_AXI_AWREADY;
  output [31:0]D;
  output [0:0]E;
  output [0:0]S_AXI_ARESETN_0;
  input S_AXI_ACLK;
  input S_AXI_ARVALID;
  input S_AXI_ARESETN;
  input IP2Bus_WrAck;
  input S_AXI_RREADY;
  input S_AXI_BREADY;
  input S_AXI_AWVALID;
  input S_AXI_WVALID;
  input [31:0]Q;
  input [31:0]\IP2Bus_Data_reg[31] ;
  input [2:0]S_AXI_ARADDR;
  input [2:0]S_AXI_AWADDR;

  wire [31:0]D;
  wire [0:0]E;
  wire [31:0]\IP2Bus_Data_reg[31] ;
  wire IP2Bus_WrAck;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0] ;
  wire [31:0]Q;
  wire [0:0]SR;
  wire S_AXI_ACLK;
  wire [2:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire [0:0]S_AXI_ARESETN_0;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [2:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire S_AXI_WVALID;
  wire s_axi_bvalid_i_reg;
  wire s_axi_rvalid_i_reg;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment I_SLAVE_ATTACHMENT
       (.D(D),
        .E(E),
        .\IP2Bus_Data_reg[31] (\IP2Bus_Data_reg[31] ),
        .IP2Bus_WrAck(IP2Bus_WrAck),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0] (\MEM_DECODE_GEN[0].cs_out_i_reg[0] ),
        .Q(Q),
        .SR(SR),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARADDR(S_AXI_ARADDR),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARESETN_0(S_AXI_ARESETN_0),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR(S_AXI_AWADDR),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_RDATA(S_AXI_RDATA),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_WVALID(S_AXI_WVALID),
        .s_axi_bvalid_i_reg_0(s_axi_bvalid_i_reg),
        .s_axi_rvalid_i_reg_0(s_axi_rvalid_i_reg));
endmodule

(* CHECK_LICENSE_TYPE = "bd_fb99_build_info_cmc_0,shell_utils_build_info_v1_0_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "shell_utils_build_info_v1_0_0,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (S_AXI_ACLK,
    S_AXI_ARESETN,
    S_AXI_AWADDR,
    S_AXI_AWVALID,
    S_AXI_AWREADY,
    S_AXI_WDATA,
    S_AXI_WSTRB,
    S_AXI_WVALID,
    S_AXI_WREADY,
    S_AXI_BRESP,
    S_AXI_BVALID,
    S_AXI_BREADY,
    S_AXI_ARADDR,
    S_AXI_ARVALID,
    S_AXI_ARREADY,
    S_AXI_RDATA,
    S_AXI_RRESP,
    S_AXI_RVALID,
    S_AXI_RREADY);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_ARESETN, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cms_aclk_ctrl_0, INSERT_VIP 0" *) input S_AXI_ACLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input S_AXI_ARESETN;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN cms_aclk_ctrl_0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [4:0]S_AXI_AWADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input S_AXI_AWVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output S_AXI_AWREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]S_AXI_WDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]S_AXI_WSTRB;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input S_AXI_WVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output S_AXI_WREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]S_AXI_BRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output S_AXI_BVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input S_AXI_BREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [4:0]S_AXI_ARADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input S_AXI_ARVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output S_AXI_ARREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]S_AXI_RDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]S_AXI_RRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output S_AXI_RVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input S_AXI_RREADY;

  wire \<const0> ;
  wire S_AXI_ACLK;
  wire [4:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [4:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire S_AXI_WVALID;
  wire [1:0]NLW_U0_S_AXI_BRESP_UNCONNECTED;
  wire [1:0]NLW_U0_S_AXI_RRESP_UNCONNECTED;

  assign S_AXI_BRESP[1] = \<const0> ;
  assign S_AXI_BRESP[0] = \<const0> ;
  assign S_AXI_RRESP[1] = \<const0> ;
  assign S_AXI_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_CORE_REVISION = "4" *) 
  (* C_MAJOR_VERSION = "4" *) 
  (* C_MINOR_VERSION = "0" *) 
  (* C_PATCH_VERSION = "0" *) 
  (* C_PERFORCE_CL = "3669848" *) 
  (* C_RESERVED_TAG = "32'b00000000000000000000000000000000" *) 
  (* C_SUBSYSTEM_ID = "2" *) 
  (* C_S_AXI_ADDR_WIDTH = "5" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_VIV_VERSION = "2105888" *) 
  (* C_XDEVICEFAMILY = "virtexuplus" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_build_info_v1_0_0 U0
       (.S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARADDR({S_AXI_ARADDR[4:2],1'b0,1'b0}),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR({S_AXI_AWADDR[4:2],1'b0,1'b0}),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BRESP(NLW_U0_S_AXI_BRESP_UNCONNECTED[1:0]),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RDATA(S_AXI_RDATA),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_RRESP(NLW_U0_S_AXI_RRESP_UNCONNECTED[1:0]),
        .S_AXI_RVALID(S_AXI_RVALID),
        .S_AXI_WDATA(S_AXI_WDATA),
        .S_AXI_WREADY(S_AXI_WREADY),
        .S_AXI_WSTRB({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_WVALID(S_AXI_WVALID));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment
   (SR,
    s_axi_rvalid_i_reg_0,
    s_axi_bvalid_i_reg_0,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0] ,
    S_AXI_RDATA,
    S_AXI_ARREADY,
    S_AXI_AWREADY,
    D,
    E,
    S_AXI_ARESETN_0,
    S_AXI_ACLK,
    S_AXI_ARVALID,
    S_AXI_ARESETN,
    IP2Bus_WrAck,
    S_AXI_RREADY,
    S_AXI_BREADY,
    S_AXI_AWVALID,
    S_AXI_WVALID,
    Q,
    \IP2Bus_Data_reg[31] ,
    S_AXI_ARADDR,
    S_AXI_AWADDR);
  output [0:0]SR;
  output s_axi_rvalid_i_reg_0;
  output s_axi_bvalid_i_reg_0;
  output \MEM_DECODE_GEN[0].cs_out_i_reg[0] ;
  output [31:0]S_AXI_RDATA;
  output S_AXI_ARREADY;
  output S_AXI_AWREADY;
  output [31:0]D;
  output [0:0]E;
  output [0:0]S_AXI_ARESETN_0;
  input S_AXI_ACLK;
  input S_AXI_ARVALID;
  input S_AXI_ARESETN;
  input IP2Bus_WrAck;
  input S_AXI_RREADY;
  input S_AXI_BREADY;
  input S_AXI_AWVALID;
  input S_AXI_WVALID;
  input [31:0]Q;
  input [31:0]\IP2Bus_Data_reg[31] ;
  input [2:0]S_AXI_ARADDR;
  input [2:0]S_AXI_AWADDR;

  wire [4:2]Bus2IP_Addr;
  wire [31:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_2_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_2_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire [4:0]\INCLUDE_DPHASE_TIMER.dpto_cnt_reg ;
  wire [31:0]\IP2Bus_Data_reg[31] ;
  wire IP2Bus_WrAck;
  wire I_DECODER_n_1;
  wire I_DECODER_n_2;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0] ;
  wire [31:0]Q;
  wire [0:0]SR;
  wire S_AXI_ACLK;
  wire [2:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire [0:0]S_AXI_ARESETN_0;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [2:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire S_AXI_WREADY_INST_0_i_1_n_0;
  wire S_AXI_WVALID;
  wire \bus2ip_addr_i[2]_i_1_n_0 ;
  wire \bus2ip_addr_i[3]_i_1_n_0 ;
  wire \bus2ip_addr_i[4]_i_1_n_0 ;
  wire bus2ip_rnw_i;
  wire clear;
  wire is_read;
  wire is_read_i_1_n_0;
  wire is_read_reg_n_0;
  wire is_write;
  wire is_write_reg_n_0;
  wire [4:0]plusOp;
  wire rst;
  wire s_axi_bresp_i;
  wire s_axi_bvalid_i_i_1_n_0;
  wire s_axi_bvalid_i_reg_0;
  wire s_axi_rresp_i;
  wire s_axi_rvalid_i_i_1_n_0;
  wire s_axi_rvalid_i_reg_0;
  wire start2;
  wire start2_i_1_n_0;
  wire state1__2;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[1]_i_2_n_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;

  LUT6 #(
    .INIT(64'hFFFF007000700070)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(S_AXI_AWVALID),
        .I1(S_AXI_WVALID),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(S_AXI_ARVALID),
        .I4(state1__2),
        .I5(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \FSM_onehot_state[0]_i_2 
       (.I0(S_AXI_BREADY),
        .I1(s_axi_bvalid_i_reg_0),
        .I2(S_AXI_RREADY),
        .I3(s_axi_rvalid_i_reg_0),
        .O(state1__2));
  LUT5 #(
    .INIT(32'h888F8888)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(S_AXI_ARVALID),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(I_DECODER_n_1),
        .I3(IP2Bus_WrAck),
        .I4(s_axi_rresp_i),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h040404FF04040404)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(S_AXI_ARVALID),
        .I3(I_DECODER_n_2),
        .I4(IP2Bus_WrAck),
        .I5(s_axi_bresp_i),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_onehot_state[2]_i_2 
       (.I0(S_AXI_AWVALID),
        .I1(S_AXI_WVALID),
        .O(\FSM_onehot_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAEEEEEAEA)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(\FSM_onehot_state[3]_i_2_n_0 ),
        .I1(s_axi_bresp_i),
        .I2(I_DECODER_n_2),
        .I3(I_DECODER_n_1),
        .I4(IP2Bus_WrAck),
        .I5(s_axi_rresp_i),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h002A2A2A)) 
    \FSM_onehot_state[3]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(s_axi_rvalid_i_reg_0),
        .I2(S_AXI_RREADY),
        .I3(s_axi_bvalid_i_reg_0),
        .I4(S_AXI_BREADY),
        .O(\FSM_onehot_state[3]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(rst));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(s_axi_rresp_i),
        .R(rst));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(s_axi_bresp_i),
        .R(rst));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(rst));
  LUT1 #(
    .INIT(2'h1)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [3]),
        .O(plusOp[3]));
  LUT2 #(
    .INIT(4'h9)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .O(clear));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_2 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [3]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .I4(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [4]),
        .O(plusOp[4]));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [3]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(plusOp[4]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [4]),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[0]_i_1 
       (.I0(Bus2IP_Addr[2]),
        .I1(Bus2IP_Addr[4]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h08C0)) 
    \IP2Bus_Data[10]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [10]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(Bus2IP_Addr[4]),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h08C0)) 
    \IP2Bus_Data[11]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [11]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(Bus2IP_Addr[4]),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h08C0)) 
    \IP2Bus_Data[12]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [12]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(Bus2IP_Addr[4]),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h3803)) 
    \IP2Bus_Data[13]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [13]),
        .I1(Bus2IP_Addr[4]),
        .I2(Bus2IP_Addr[3]),
        .I3(Bus2IP_Addr[2]),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h08C0)) 
    \IP2Bus_Data[14]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [14]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(Bus2IP_Addr[4]),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h08C0)) 
    \IP2Bus_Data[15]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [15]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(Bus2IP_Addr[4]),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h08C0)) 
    \IP2Bus_Data[16]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [16]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(Bus2IP_Addr[4]),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h3803)) 
    \IP2Bus_Data[17]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [17]),
        .I1(Bus2IP_Addr[4]),
        .I2(Bus2IP_Addr[3]),
        .I3(Bus2IP_Addr[2]),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h2F00)) 
    \IP2Bus_Data[18]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [18]),
        .I1(Bus2IP_Addr[3]),
        .I2(Bus2IP_Addr[4]),
        .I3(Bus2IP_Addr[2]),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[19]_i_1 
       (.I0(Bus2IP_Addr[2]),
        .I1(Bus2IP_Addr[4]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [19]),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h2003)) 
    \IP2Bus_Data[1]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [1]),
        .I1(Bus2IP_Addr[3]),
        .I2(Bus2IP_Addr[4]),
        .I3(Bus2IP_Addr[2]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h08C0)) 
    \IP2Bus_Data[20]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [20]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(Bus2IP_Addr[4]),
        .O(D[20]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h3803)) 
    \IP2Bus_Data[21]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [21]),
        .I1(Bus2IP_Addr[4]),
        .I2(Bus2IP_Addr[3]),
        .I3(Bus2IP_Addr[2]),
        .O(D[21]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[22]_i_1 
       (.I0(Bus2IP_Addr[2]),
        .I1(Bus2IP_Addr[4]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [22]),
        .O(D[22]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[23]_i_1 
       (.I0(Bus2IP_Addr[2]),
        .I1(Bus2IP_Addr[4]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [23]),
        .O(D[23]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[24]_i_1 
       (.I0(Bus2IP_Addr[2]),
        .I1(Bus2IP_Addr[4]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [24]),
        .O(D[24]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[25]_i_1 
       (.I0(Bus2IP_Addr[2]),
        .I1(Bus2IP_Addr[4]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [25]),
        .O(D[25]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[26]_i_1 
       (.I0(Bus2IP_Addr[2]),
        .I1(Bus2IP_Addr[4]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [26]),
        .O(D[26]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[27]_i_1 
       (.I0(Bus2IP_Addr[2]),
        .I1(Bus2IP_Addr[4]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [27]),
        .O(D[27]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[28]_i_1 
       (.I0(Bus2IP_Addr[2]),
        .I1(Bus2IP_Addr[4]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [28]),
        .O(D[28]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h2003)) 
    \IP2Bus_Data[29]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [29]),
        .I1(Bus2IP_Addr[3]),
        .I2(Bus2IP_Addr[4]),
        .I3(Bus2IP_Addr[2]),
        .O(D[29]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h200C)) 
    \IP2Bus_Data[2]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [2]),
        .I1(Bus2IP_Addr[3]),
        .I2(Bus2IP_Addr[4]),
        .I3(Bus2IP_Addr[2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[30]_i_1 
       (.I0(Bus2IP_Addr[2]),
        .I1(Bus2IP_Addr[4]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [30]),
        .O(D[30]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[31]_i_2 
       (.I0(Bus2IP_Addr[2]),
        .I1(Bus2IP_Addr[4]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [31]),
        .O(D[31]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h08C0)) 
    \IP2Bus_Data[3]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [3]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(Bus2IP_Addr[4]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h08C0)) 
    \IP2Bus_Data[4]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [4]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(Bus2IP_Addr[4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[5]_i_1 
       (.I0(Bus2IP_Addr[2]),
        .I1(Bus2IP_Addr[4]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [5]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h08C0)) 
    \IP2Bus_Data[6]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [6]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(Bus2IP_Addr[4]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \IP2Bus_Data[7]_i_1 
       (.I0(Bus2IP_Addr[2]),
        .I1(Bus2IP_Addr[4]),
        .I2(Bus2IP_Addr[3]),
        .I3(\IP2Bus_Data_reg[31] [7]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h08C0)) 
    \IP2Bus_Data[8]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [8]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(Bus2IP_Addr[4]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h08C0)) 
    \IP2Bus_Data[9]_i_1 
       (.I0(\IP2Bus_Data_reg[31] [9]),
        .I1(Bus2IP_Addr[2]),
        .I2(Bus2IP_Addr[3]),
        .I3(Bus2IP_Addr[4]),
        .O(D[9]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder I_DECODER
       (.E(E),
        .\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] (I_DECODER_n_1),
        .\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]_0 (I_DECODER_n_2),
        .IP2Bus_WrAck(IP2Bus_WrAck),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 (\MEM_DECODE_GEN[0].cs_out_i_reg[0] ),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 (is_read_reg_n_0),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 (is_write_reg_n_0),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg ),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARESETN_0(S_AXI_ARESETN_0),
        .\Scratch_reg[0] (Bus2IP_Addr),
        .bus2ip_rnw_i(bus2ip_rnw_i),
        .start2(start2));
  LUT6 #(
    .INIT(64'hFFFFFFFF00200000)) 
    S_AXI_ARREADY_INST_0
       (.I0(S_AXI_WREADY_INST_0_i_1_n_0),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I2(is_read_reg_n_0),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .I4(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .I5(IP2Bus_WrAck),
        .O(S_AXI_ARREADY));
  LUT6 #(
    .INIT(64'hFFFFFFFF00200000)) 
    S_AXI_WREADY_INST_0
       (.I0(S_AXI_WREADY_INST_0_i_1_n_0),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I2(is_write_reg_n_0),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .I4(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .I5(IP2Bus_WrAck),
        .O(S_AXI_AWREADY));
  LUT2 #(
    .INIT(4'h2)) 
    S_AXI_WREADY_INST_0_i_1
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [3]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [4]),
        .O(S_AXI_WREADY_INST_0_i_1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[2]_i_1 
       (.I0(S_AXI_ARADDR[0]),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_AWADDR[0]),
        .O(\bus2ip_addr_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[3]_i_1 
       (.I0(S_AXI_ARADDR[1]),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_AWADDR[1]),
        .O(\bus2ip_addr_i[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[4]_i_1 
       (.I0(S_AXI_ARADDR[2]),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_AWADDR[2]),
        .O(\bus2ip_addr_i[4]_i_1_n_0 ));
  FDRE \bus2ip_addr_i_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(start2_i_1_n_0),
        .D(\bus2ip_addr_i[2]_i_1_n_0 ),
        .Q(Bus2IP_Addr[2]),
        .R(rst));
  FDRE \bus2ip_addr_i_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(start2_i_1_n_0),
        .D(\bus2ip_addr_i[3]_i_1_n_0 ),
        .Q(Bus2IP_Addr[3]),
        .R(rst));
  FDRE \bus2ip_addr_i_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(start2_i_1_n_0),
        .D(\bus2ip_addr_i[4]_i_1_n_0 ),
        .Q(Bus2IP_Addr[4]),
        .R(rst));
  FDRE bus2ip_rnw_i_reg
       (.C(S_AXI_ACLK),
        .CE(start2_i_1_n_0),
        .D(S_AXI_ARVALID),
        .Q(bus2ip_rnw_i),
        .R(rst));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8880000)) 
    is_read_i_1
       (.I0(S_AXI_BREADY),
        .I1(s_axi_bvalid_i_reg_0),
        .I2(S_AXI_RREADY),
        .I3(s_axi_rvalid_i_reg_0),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .I5(\FSM_onehot_state_reg_n_0_[0] ),
        .O(is_read_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    is_read_i_2
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(S_AXI_ARVALID),
        .O(is_read));
  FDRE is_read_reg
       (.C(S_AXI_ACLK),
        .CE(is_read_i_1_n_0),
        .D(is_read),
        .Q(is_read_reg_n_0),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    is_write_i_1
       (.I0(S_AXI_ARVALID),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(S_AXI_WVALID),
        .I3(S_AXI_AWVALID),
        .O(is_write));
  FDRE is_write_reg
       (.C(S_AXI_ACLK),
        .CE(is_read_i_1_n_0),
        .D(is_write),
        .Q(is_write_reg_n_0),
        .R(rst));
  LUT1 #(
    .INIT(2'h1)) 
    rst_i_1
       (.I0(S_AXI_ARESETN),
        .O(SR));
  FDRE rst_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(SR),
        .Q(rst),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00E0FFFF00E000E0)) 
    s_axi_bvalid_i_i_1
       (.I0(I_DECODER_n_2),
        .I1(IP2Bus_WrAck),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(S_AXI_BREADY),
        .I5(s_axi_bvalid_i_reg_0),
        .O(s_axi_bvalid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_bvalid_i_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(s_axi_bvalid_i_i_1_n_0),
        .Q(s_axi_bvalid_i_reg_0),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[0]),
        .Q(S_AXI_RDATA[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[10]),
        .Q(S_AXI_RDATA[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[11]),
        .Q(S_AXI_RDATA[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[12]),
        .Q(S_AXI_RDATA[12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[13]),
        .Q(S_AXI_RDATA[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[14]),
        .Q(S_AXI_RDATA[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[15]),
        .Q(S_AXI_RDATA[15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[16]),
        .Q(S_AXI_RDATA[16]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[17]),
        .Q(S_AXI_RDATA[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[18]),
        .Q(S_AXI_RDATA[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[19]),
        .Q(S_AXI_RDATA[19]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[1]),
        .Q(S_AXI_RDATA[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[20]),
        .Q(S_AXI_RDATA[20]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[21]),
        .Q(S_AXI_RDATA[21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[22]),
        .Q(S_AXI_RDATA[22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[23]),
        .Q(S_AXI_RDATA[23]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[24]),
        .Q(S_AXI_RDATA[24]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[25]),
        .Q(S_AXI_RDATA[25]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[26]),
        .Q(S_AXI_RDATA[26]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[27]),
        .Q(S_AXI_RDATA[27]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[28]),
        .Q(S_AXI_RDATA[28]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[29]),
        .Q(S_AXI_RDATA[29]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[2]),
        .Q(S_AXI_RDATA[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[30]),
        .Q(S_AXI_RDATA[30]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[31]),
        .Q(S_AXI_RDATA[31]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[3]),
        .Q(S_AXI_RDATA[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[4]),
        .Q(S_AXI_RDATA[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[5]),
        .Q(S_AXI_RDATA[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[6]),
        .Q(S_AXI_RDATA[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[7]),
        .Q(S_AXI_RDATA[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[8]),
        .Q(S_AXI_RDATA[8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(s_axi_rresp_i),
        .D(Q[9]),
        .Q(S_AXI_RDATA[9]),
        .R(rst));
  LUT6 #(
    .INIT(64'h00E0FFFF00E000E0)) 
    s_axi_rvalid_i_i_1
       (.I0(I_DECODER_n_1),
        .I1(IP2Bus_WrAck),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(S_AXI_RREADY),
        .I5(s_axi_rvalid_i_reg_0),
        .O(s_axi_rvalid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_rvalid_i_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(s_axi_rvalid_i_i_1_n_0),
        .Q(s_axi_rvalid_i_reg_0),
        .R(rst));
  LUT5 #(
    .INIT(32'h000000F8)) 
    start2_i_1
       (.I0(S_AXI_AWVALID),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_ARVALID),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .O(start2_i_1_n_0));
  FDRE start2_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(start2_i_1_n_0),
        .Q(start2),
        .R(rst));
  LUT6 #(
    .INIT(64'h0FEEFFFF0FEEFF00)) 
    \state[0]_i_1 
       (.I0(IP2Bus_WrAck),
        .I1(I_DECODER_n_2),
        .I2(state1__2),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(S_AXI_ARVALID),
        .O(\state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF4440EEEA)) 
    \state[1]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(IP2Bus_WrAck),
        .I3(I_DECODER_n_1),
        .I4(state1__2),
        .I5(\state[1]_i_2_n_0 ),
        .O(\state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00FF0008)) 
    \state[1]_i_2 
       (.I0(S_AXI_AWVALID),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_ARVALID),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[1] ),
        .O(\state[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(\state_reg_n_0_[0] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(\state_reg_n_0_[1] ),
        .R(rst));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
WZwslNUvxQZsXn79NcOp4Z7PnrnSD46zevYDg8mrJzjCbs0tTTR2HP2nzMCYcU9SOXZhegwLOvnB
O30Iyp5XXROMUBQRmKf8fZZFpYHaaXSRoR5wqANJ2TkmuhI9MgpEk73ld9Z3wJP6HT6iF2298vMz
PTts7D9wDSg5vkZfJws=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
sUWJ31BiZTj2f4k5NGzDlohns7ylf5BzBT9A6CMfpso6OQ30HUbbD85LtCyhBNn4KqYu15f+TZqf
Ir3LEXHXgIFTzw8GwzYL/GyBRhaFkCNe17zfLP0jFJM6V2ranMQZ+O+8yOmTLuYFkQbjKSUrywGm
K+m+9fLaoext7iOzkbmNZtJtii9Vq1qU/WqUDQwHPAuMep5V7JkOb7GS5uBGx3+mfqF4MNvf0ViF
NsJGrIbpll0N0bG3a0r0nEcwJlsiYtQizHfIa+FSbfAxTdzaxWsizG3tZVCbS6SvlojQz9jPo3ZS
ytboOAKx5MZNKc/za9ZPZ/jkE64GvGl1iE/Q6Q==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
CdUNiwPuTejJrcMt6AY7FVIA2RhCFMisZC8Yht8scwAWQmCb2POfNQ10Heq3bwmDmjaugOrSWdil
wjAX4eGII3n0u5+hwf+uXmyQLlPGjH71/vAt/+LzRDIwdqsMKFI1UdiMEOjbkwgZ0oFObsbdaZyr
A5UBEGSsab8B9NWWwYA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XcflpchNS+sCr6VQWlYOThmE1Ae+0tVlnoG2iiBh84HjVfsckhNspygH13FQJbEoJT9vaX8S1g2+
fgaKKcaa/E0CBF25ck/u0Im/oW/CZAmhFSwSA8JUk1e7O6dNB2ucuxAAesSyOvjNGat0ULEP20bP
HqtOcyI9xTrRgLwOfP7iqQzaY/qILuAHVB+cbdF94jiWdHu+dnTiDP2ylvDPQAdYfJttGvHxmfJe
YLlg+Nvnwv8uXPJXfIVspBzIK4kH1NJgl02y0bNoYfeDnmTP0M2nYSLze0oGxzKTJFEphCxN/dM6
RCmgmciv5GzH0smW8uxcfr5Cqz7avJl3B/tlqg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
5IwwyjV6MXUNvlkzsRUVC2F6OeH/C+u9FXZEUMsBBXIra5Nbbw9AA1uPwdZcebSdbH4YK9jFsafH
q4CTrFJtI0qRxQKC4Y99k7cRaFd531sl2AeVtd8XkUyyuFdDD0tNoERgqZWiBQ5V9FdHeLgl+zP+
Nq/GE/fOCv5EewIuXW4X1azNEZp5zVfhulc/x446MqqAOtZQ2w4yxty0K34fx+x3EZH4FIAnwv2u
ACv4uOEP7CwifmpztgoiCYpi9WzngYYRiIfanLsqZ65kp0Oqa8ZEijhX1n5pWx066LCJO6fTdq/Z
l1/5GvGXBALOv44Wt0GnRxWKGq16F9IKWb9/3A==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Sf536L0PKWnB9CUbE7SeiBOZ4ay1X/JZ8r1Br50dSjYUDrqC4OWQ7tsQSI03J5bTYSF7ZcUyg89p
Dd3dlAMZeFOxAaaRGQU8PX24LCIeE/1SOQ82rfOn1fyAOsj3b31FuPzBUITIacVy4N+PVHahELV/
xSvaQ5oWDhIzJV72Ft5Lr5vQvABXMy1nNF8oZ5AsrqwfmHcCjgAb0sIWpQ0C3k34wgu970OXuagA
eCu8MnX4ECzCe3y5os+2/JzMWwaAi0SDjtO5DAlLbDkqCDbHra1jakp7/6cGPI+uHybt4kljCSBk
+SUk+cDjz5k8oiv90jmBv2W6QcA61xsJMFBEGQ==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
J+udShblpCk44uoSpJJv3IeIhXBy/pm7iBsJZrKJDQshqtuPikJLuWbU7fPfFiWF/8N8LLSd/VJp
O4wCWggUSVP4m37elRJnQk59lGODXijRVkDr4qp2HGu4sU608862GAM9508RkveHH5B5rzT0H4io
w5OpUin0atQVGUq2+AAB8aFdmrdp/v1shkaVtYI1vKolU1gtqTPDnc5msL4UK9qCgLPIVaZcJ8zr
/CqYvoxYcY1DUg5OBv4kDrQiFoExV0iDlmEE7CBDNkKBFmELjyx7TInUTDsRnMZex9EDoj8BHz9s
zgCoUR9xMlQtbE6VWRg0YgFAPgowMZOdR2b9ug==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
m0hnNYI4KBfg22EMBAM4Any+pGxSNVq7hUgvjS1ubEfxVn64wRbP126WMhzM5EdO0zI9j23R6a7b
4ZqW4SPIe2qklkGkUbQmPQK2zOnG2GVzn6d2WhUBpqcbWHztDFl8ffW7pYJeQKeAtfJPJfj6i/No
xA6gY9nYizhgRwubaRuQOMF40lUUzSEJeU7CMBifQs/zEPdgBvuuMTzlK0fCelr3Vg6tmDZqIvwB
c9TiANezN0+VijvnTuMZvh1USszTcmrXChLnrvzqc10r7RpkmU2jCqc77JG4xaG0fkonEexOgJab
aT6gtHmHkIuYSTs8Dl5zDhDpqB7c8UrAeSh69vRoW8WxIpccO7r2eNXcvdJHg3YPWwxO68oCuJQ5
jTZgKBKpVwrEAX8ARuX7iyKY5m2yOT6hnOxE35XIx4/+HQEJ/UCvzuaqrzSvGTwOJxXX5OsgMZqn
b3kqi4zWplC/cr/7igK5TbN7fF/iPVj8aI3YtUZ9UKnO0SR87odx7VLV

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ianLYk2aKRCDUrXK5yhKlVJ6wt4sTkzAIQeajG9vWOEFN4SxnRMV443Wmltx79hPfBS+tVslS8sv
+wToO0J4cVqQqIVBuqCvEZsBYdHK503OKRqfbgcsS484gKRpKOpxbn6Shy0ecsKA7MI2TtHoLByB
3i3wBy9GHCpdAzV9Q8QOxZ5fJUXXSOI0odOU2htGRyyD/1Wmgz5Rw8yUv9DDiKzSI4evzVjWHcMo
vsxGo+lGGYG38OgnAWRwkcxj2t4XgHIKWbg07WNVwuwlU0bLsIeSrcpfI3pnro3voMQO7x01DBcH
stNVSO/kt/452JP/kmUf3RdTGMYm9/NAuTvTpQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 17440)
`pragma protect data_block
QbeCQJwz2grC2sPHSOCBR+BI84vEjZrRmiz1RIUe5sj9MEejiE8USd2BlLFyf1fq/LyXt4rLFGvI
13M0y49IaR+P4oA7J82xr2zKQbjhFh+MK621kva0o8CxfmgQ4WdTrFyew8vddobVa/y6iv+eEFpB
Asb6N2UhltrACeuDlBwBXlrMDenyXGAaz1/QfDrfk4ZSIne5X7rFp8uDiuojkgouPs4ch+DVtoXR
Zc5h8HbhkAQ0YmgwwL653oWSkIabxpJ9Jf33Ic94vsFlCFFKNFgqR2IyC/m/BNI1r+qE+IMuMf/T
wA8cd8XfYIOXzNlexH5L5AikgwLf7ZmEVfHKodBzYnbSvoQUHfjr9lOElE2TVSiL8AXr9YGVuWk2
9LoK9zaAGClA1SWihuH8irVKaeyiHKw0CZbbGOKeRgIiHNxmNlUVxGQAAmyH1u0JZTXKrMyxnPgD
89I+Sjyn8b6Hg8katJifPh3XhEP8lMaizLmOvAwfMm6v7ghX/inx4GHp6o0W6yD+FRAq1OX61SyF
xQpfbnYkNNrTV0L/wh2f55jI/pVv5KZHD6qD47uHFRz24hglL9/qDGMKACqwdV0rPr4VAdKY4M5M
DCyCejAttremcAoVBzTQKzhfitET5RcGCtn+KSp1f2Z9VUTouX+nCxIua7CaxDb5pY3S22wAE7MI
BIBNXUPVumWZDvApprgg4chlOounqOWWugx6sDjwfoPz8kTIVpMse0sH6u2cWEje6iuanQL7yPzx
sYNEKUYSpfzySBwyXNmBZpU5bNh2Ghy+5aXFPhVh2g6aXm6vZq2ZneEIevspylzdmHNm25g2k+Ha
Bt3t68g6+1arLYUR31VoTR3OcgYHqW8QW/kY73tpDjUocIPNbGqRlCx6VEsXs3C89wo3/yzR5xQK
jkc+gckg/8BsLzowJ0eJPIgirlOBR16rX+Lvh6v64JLTDlO/39bNLh6RiFNuxH11UNeWgr3TQkC+
gkVdryE3h1c/2cmomSUkQ+gzOCNjM6lW2ihU9plomNQ0Hz8nWxMdUclTmUFDqFmNJmA7eqjHZJaP
5QlGMSGFJmzOvl0jvD8dCZazNguaBr8oQ4DXhJAlgPjkZRldi80akB713j9I6uBgG3Z9d3Ui+cPB
9YllFVQNKXHg3XYISKSZKp+tvRcBajIT9IMNEx8XFKTkw2jI6Z0d7GFs9gHAvz8qKfUUE2eaISwN
uOOlqMrt8szmfA1Mm1dVIyq/YkXP2XNFVaucmD7DBydqrAcgt0j12lHL7YrtmNp58eLCmXRezCo5
tWkOejF68A5b3qvOPgv/TUYjugu2FjxN6TeEwv1lc07jPgLa+TpAf12DqeYYaPW4J3JNsi+HE5O5
Z2R+8x0O6cNjquCv10l9QzzPcaZ5igapTUPqVhUblOHZjNOFK0td9eWGLEqi3Jtz1+CkZ14jEC7S
OUZnvWkDvPO2/EX/pLIha/dEWO+tDrT9tF1hsHRseRsfIGz5+WKZee3f7pc5z0Gf83eg9iK8fXyT
1ESQD0CERrJc2UTARJLIVEkJSioexp8F94l/OXOcP3N0eU7/iCh3kfNlPGiCu0Wm0oRWOrHuDuY4
fIuq00L7UIddUvqGJL+aErIm4nphuxoeAuNfsHiUi+J6G5laiZ2giiat05jGwSwlIl/LFF7dUJLG
4EUCqSWmdqCyUw/EIXw3c8OinTiPyg0eIWOaGgZl/fD6GdiI2+7jmTzZUx+OVOMdCx2K+esclmdD
SbDmlMzuLRU4smQgkYuUH8yuwSvQdVwWIOJQ12bmHuUCMRzngIS44xlaPukHEQkHah0vHi2ja8Bk
wwZ5h0TERrBsAd6DEUKumQNm8Q9Sj/HqRlcs6EGl6VsttyK6fzfwzjLuv2pnPoiMA4LtjQvKLKXM
3Kbii0CwMsv3ZBsWLbtd198RCllsYPQfNv22mRY+coWr/woqOppTtLIFBxXWSt58cAXX7rwOGc/G
BfPD2YOUXd9xE7JwMp8iL70sswLxkYqmcZhagvD3EPGW680c/5myuPgboSWvlCwZqWq9s2IGcvlq
nFwXMahQtvap3WEok1ulM/Rv+Sh4XO5Q15qUtbpJXmuiqf41as9MDuTovYojZKzpis1Li0gk9K1E
aO3GUb6NpIW6yycDBrAHbd/RPTFkpIMV2h+AJNIJ1AlwyV2eOKp5FqwNjaFlybJPn88FXSQjRT74
3jpmvtyBMu5udF7kEgoHOXQwsn9htyn6P50s1w9fi4t5qgmAMHMhuw25njSsfb20k7r2uAGMTnlb
cZaKv1Xi/AjLKsGbeIBrfcdOiy9KacLdQr2ebYxfjmGTexQnnplUuzZ6D+zf9enl7Bkf2JFwbtQS
IRrW9xvDZjzom75EoTzYsG38l4CWoBgcky6OgZAaOgBPr+ePGuSqY9/HwsZb1qw6/wTnu5SHOLdq
XAGcf7AIa0jtgiyOxe6oMjxEp16MWMw03Zk5beuk1T02QSHw6JkZoE98woPLuPhB0EEi7OzcsWdN
NHgn4u0k+vH8hnYMFn0iPNRNtodap6YiypT+atm+gLPSnUxr1aQqG9JZMAnUxxKEG/xmbkzqFY9H
spB6KvUe75zUwkvAt82FKx/CQATMwMTNnWJ5qjx1CUUuR4G2jw8X0vnJHFfFkbcSuUBUeWdyKzNU
HiLZhdmbr1dGN9f9Qdar87EL0w100mV8uykz2eyba9Z4ww2IMUbhW5YbU/bTB7JaId0OdeELyOKS
UVW1u26GfafnBXwYV0eqQbWxfz4jtEhHxk+Hl3IfI6wVIZZ+GYNS6IiaipQxnuwqajvZ68MU2vLr
ps1/u3gMKTEKFxmrHGPyKGzp7NhjFodm5VAoYD7Rz9qVCqBf5ZrRnSMOlcLMAEnXvqTb8WwbSgvU
7WrJ3Dw1xuwfURdh4Wdh/VTaQYey8hUa5mpPYHUJOt2pRt6DwENF+r9h1Rt8IfskemT4HUWwU8Dt
PPhfowS0vhTsxGrANIuRzO73clpisu/ulu+wljb1DF+9Q/6LonQdJ4RSj52xm8vxe5+QB0aWLuKb
tlAoo2Ma/IijbxU2hPia9OusJuW1XB4iGJNKVANsPhE/Xu3cikVYkx+ETJlL6ECBKi9ZyhiSi5Kg
aALmdYNkXilQv7Oh11J7tcJMmP9C8rq/wkTF93eSCFtOwFnLg08bt8syNVKlyTIAOX2nAZ0OpAfH
nYMhdolv3C5jwREgtHS8IlNS5y2jjZgA5xOZ8xHFdwZcrEMwUjVRT51uYg5eXyefzWoz75HZ0o57
oquwY0gR/wlmuH0u4Dyt7oQ1ROmyeVUMHubHJEbjb8DRBgjDB1LZIEzynBrbh1RqXpXncaI/BauL
8sxwHHAJcRrPR8zt4lqAxwd48ov2/E8VcwNhRs4aK5t4pCbSB4DFEL3xGNbtZcfH+PfxVKT3iSi5
OsrByHWnIt7S72uPf5coC8KfpnaIvC9M7I5AnEtX/Z1/ngR5kXEK2hll0lGuEnVEFEhUxIlPW2Q7
1W6zfVBkTG0ECh45wy4ABhmFxf/tXG+DhUbJr9jWt691RbvqaR3gMTDAEw/tCY+iZyDDbcUM6VZ8
+pdB6U9f6Xg5+c9Ezzv27Is9VwrxlM/SaGLC3O3N8Wg4+pw6PRFixM7lhIqnJ4ZsQneZ6irte/Pg
50kWTk9MNgo25xBMb6Kaxefv2LTF4vAGTrY9a3UvghX7MC1Yb0nXNhEhUp2BQf5o38IZKg+dLHzL
tg9hLHNJGvNADZaPWe83vfmQVPhGtLnptdyIodRRq6KY6uYGWTbawqGcZmuk2pDQDeuZQdfL0LQj
C7AQHaoj4SIC/iBgWQpKObMoqopyCZok1/FOU1g4YUmL5XGU5vu72DTuO7f3ew2nlBsN1LbEDrKe
1G3VoL+Wr7wAnZtDpVuxtvV9RJ8sI35o17AaCovGTQyPA3sdECXZ5qU27alhLgJeKJk66gg4idDf
aM8C3IcDPvxvIx1JoHWzsiuiJzcdy6sYRNNhl24U/338vcSOly4so64iy7aCyHE17C/eOh9p7DnP
0TVOa3DFo56KBQ1YCY9Bp91l7h8/3ln2i3KsuPr4k3YBsqh0CSlvx6CvmPKf5tCxvwHM5gLd5epl
nrkVBGmeWpJ8lsLAFMDwA3Frd4WS21rCgVhS8lTusJAGMqWYJ1/SqUwVxrOFrvRPWOxxRjXYyP66
aA4Dwgb7BvU9ki7kZRdfH09hQc25piwRUmJzsbb2sInd7vCMuVZSTlHveG3CmMwMkOiWkJQwKzf8
F+3yHZQJSzOZruot6GmCvBfWWogzh2Q+iPknrjM/Eik4xnY1Gkrcte8ygsUk2OEUpIWrHIz/hub4
HPJZPqQZbvQ44ffIwEazCRPPWheezjk72gNewcqAc27vTOWRNsq4bUEFl/MVpykE4Dh7WR9trn56
zKcfasD39iMUD43XYQTGs3S4Ao5Nw5xJifIrg1QjyI5JwuA4jNk3Ceh+MAkwyRue8EIs4wcriOFE
KMUE+QAHDk97G67FMS/JrnjrxkW7qTDYbRdaZjs8a1470Q5OJ6AMwlal/IdFqxXG/ySZZT/JgaI5
LMQZ8V1NpIOyoz7JZw/euUeJkejBSVKVKpRav+/qWMVR1oQxaibGAyZtosCybNRDPdbJS7fElsIX
DSaP+qdEK8oj7UZAbwrliQGLdkZjB8410bvyDu09XJ6BsOJtuBsU5yJ+GT+pOJSRANJtWuKup4i/
SC8esrfVr6LxcxEeUQQ15kKXcrxy0yWTAPaMMH36z/qu8bpRF7KO5jQeq3t53YCTTj5GWqnFICO7
PLvklZKefk8hykySFQ7aj0AlwU+9c1FIHF7aLWYIlujHVWRv0KJFGUmxvHDMKeDJFRIUMzHj5fT1
jMJzrLKAQrv2wYi3kKDaDzX4OEdgUL9QHJXmuGDmE6pK9eW06Nw+VmGemogjsGqwXTQKmmIBoAZM
Pag7BsWVdrOqRgdmy2/IyM81jxeigdiRPh5DamDd3HJl0owELf2oBBcZmNii3h96VfNJNICSVt7L
WkxmY/syVRp7MP7LIe2fg+XniTojGZjcAS85E7JR8tU6EtXoeKsNld+M35U2zZaf38er8Aooqscz
sYn2FCIDHS+TQx2uWaHjRkL9vccUBUTxScv9zTHnMrqGma5JzGI5E7N5DEozaRThupi6HE7Fg/Z6
PQk4iyo2PW2POzAGEAUMJTm8tyHsJ6e7+7SD/6pF4n3tF+ktCEHgdAaN+wKLMvvNVV9dQWPMIqUS
/GBEYeA4alCz+RKQjjhvfQf25TmuQMX0VWoFwtO879p+wnk5rl3Ow4RS2ypGDJ9Rd01aPFlurIj4
QEFyit25A7ym4gxCvEbUXWQssJ+8w+w1ceBx8aRXw9iJv0/cy0e0+loVTmTsu+N7litFWeQVUBxN
6dqkgt8S8t3Sh6bL6Rz+WTUhzdgG47wWxqJA7ew9xoPxH2Z9+pRa1sP/uq3mrGGGwcrtUxZf07vy
ECFzbKr8DqsbF/4l8IAX8ctaUmMKefyQn80tX8XaeDqeY0K/IO0sCJJ56d/7I62YMwiADOBeV4Va
1INkpqnbCVpR0RtuzGKrexvP+wHjAk5qHqApn3kjGTREewGz2EuwnwqRN/37zueYQGV/Y5Oi/Ksv
oqUka9wRmybzJSTEMzEKcmDhd0S6o7iwkg3LZXi34yIsiMTGrVy0oWWBLUmg/PntT+oO1S2Qw15z
yLNbjbE9zlUH73n4r5wkHO3crC6Mh0kOyq9E0CsmwRVHcnhfGGMg5Uqm+IwvYOQl1OpYlBuBghn/
QOrmkaUfgwKOe6tdjMvnnDr6MOQXv6RDi3xmcqWtahtdLJOy2tBT7QK80ehLxt2b8sgJO1qtjZzR
/pj556sH9VV/7VxB9ZiOEpao8DSMLdFHAzlAwyYwUVPrtaLkLH3ig0oPDRbh+bmY0yEObaNH1Zk3
At9O9bYtXlPlyyiJYx3hUpxAJVWP/AyU0LV7kAEsA4ADv4rVvDFD7xnD0w/jKX6MiOUink/CfjMa
sHRJ3HiJVa1spMx3yhxkWEdF7ILYyVIcGTTan951r0dD3I5B0H0SXJnijfWXdJjlQWsEyToxYUyN
d6TMiKXZCxd6MZDEivcocMQLP6Sigv3aAJzNQsOzcLIJq8O/YOC80jHi1YVebpcocOvb53k7LNzV
skBn7NKCRIwIhVcGVw7sICTQlS3r/rl2I9juCH/4Zyj0dve+jvXAcBJEDFPTh5/Y+QE7UrA8am2V
Ivx9q0JfLBDiqn0JRfb3dpSrOXJrxPz3RmHQgxWfNxd4W6EsoreTL4NPK6xs0tnTSsqY0gOIrgkd
gjNE/dWE5FHtE4qQo7KkeDMtok9Wt7ALexRk867AZsoVDOxF8WojCOXzxdd1LPjVel1oT9FN8knq
dLsbvhPzmY7uUChUufLNmIPVUpJNDzWEfHpSXFwuErZ6hrMzflOgXXdX+mOXsVYUhUclnxEAPsyI
ePZngZi6J5zXXdiK1PyBI5YVa2bPEEHtPTSMsIAzLp4Qzvdi/UJh2GxUFVFRnYRyRr+WCN4QRPmK
v8gbWVkMGCyMovSCKkC9qK2nt7u1DWlXWNSEIBX0dzIrrhnswLMt/ONSszSFBYAnUtcifP6HgvQZ
yTC1kJF3Nramzazy/tlIk0uUl1UiX1WbmpR1Fxg5pE3zUnpYsLIwgbuy6Ci+0bh/QdpAWiwdicRY
Y0k8JQaU0HY+cEFT4pZ0vuTv1/npT6YhvUXmSKXf+/BIGZZvoPkSTPLamffvQu4cO4sZoICJAVvZ
UVay5VwN1LzyRenQCYecFdTMHapXCfFb5bWP14+aPewE6fvjDyy9y+wpFbLTUO58+BOg6qhnW1Mi
n061AByuvKaEiBCozSC+/G/x1IAOgawaTRDptWUDuAWXfkGOaGEfmRPiQ3EZzhe7Bhs6htHsuuyI
/c9HiAzwwtKQzxAM4jPCXtOXh3L0cDy0cjeRD++PStrQZP9khJA1vfMEvBcZ34CBJhMoMztXCpUi
2M/dsz9n7+OAFMsPi+XufPgbEJzQM6djgfxRXuDLIIoQSexYam2Z2q6EBNVzS08orEUjydMcdgtl
uMQEZQFGjKnbx0IXc7XxWcmqusBKVdsj7G/4e1yq9xPwrKH/wfnnfdRcRz3MtcEqfAdGR6+fDUZn
EbqZ4ZLrOY8j4/3bPzWHZi5Z5kVhuww53ICY4GKR9PUeehCpoQNhsKe63d+j5VeMldkW00jyNPiv
U+yHdGk6X2UNdxVt5qEG9euO4eHk6RZAH84PEEz/R0NmhsokrbDJa+lE7zvETxyM0O/zp4gwdNh/
0twgKl8tatEKLnNYGa1ZcQO80F+cJk461ToGwFcVcxJvyNvMO1TTdsjtpwY6TXUtM25jSxgVHkEp
gFcJw68DcILytdZlGKHOYL7KG5usZ5NWIvoTEAOAbmIDWLxjaBT1BLueSuqQWey8QP35ebT5yFzG
HsNdI7fSh1Wo29JmNMjHdeKEHSAFHTfoC+O+02U/JH4O29775y4HbCB2DipEXtdtJsxNFh2V3UJg
9AurY4TO4J9vYlLwgYtKwbMZ77N4L13lQiokR1+qRa7kPjrx4ClnQ2iblConLAL0CEiSdn/YVwk8
zj6Qx5UFVnoDt7PJgs4FU17dO0y//zqPP/b7z7tvEeq1tHmHvBW/t0sI4O3fTyDfWswScpTKntwz
GJ737KONiAHB/WTY1WJ+LOCkc8DIrkfYLPul23hcVCWqhrHpLth3Q2y+nwc26g6j1svewBtpqATF
VgmNvlblc7ydPooCho6SgGD4fsWu2LnJuEKiZMcscW+8znsETSTfFOFsnNyCUTGzFSb175zl5wLV
yA8f/vEfgl0wFQZorJvGDqFOHwhwynJ5JP+GSXEJ3zEDXRhSemOmknPXui7ox25QQO4KrQMcLsec
M9sOp97nDQTT2fjcRUuONRKkDvd2KXAWvasVDxCfjHNnFGtXGnhYfU7XDG7OFqIAXKN+g3Ndl2af
+9IiYxXc9iUfUiTs3UN21GCbOBoDFfPtOELwWwgJv4Msbbq8FpCf+VpwJsw9pAIvzW0f5wxc92Sw
VwV1mdyHYYn3wCnqpwpTXgvwIOedoHUuZ4M//1F+C3aGY03gc+on6t5zy2PE9Rn0PfM3HLRD83oZ
VjnUthSgo30CU8QXlMAX9hvHJiQNcqiknF8RKyDkdMSfoDIkwPcyki94JigQp6r+kuMZZNNtX2dX
T2PQPTVgbND0WWedXf5cUsykSODfE0hL2GXzxUrPNstrqUlvY4KmkUQN3NYPM5LO1y7GPiToAFkg
L/Ig+GsZ14n8EeLZq/qRVnC/8+6hkMnYzXGaRs4rq8xMtTAtGNScZRHxZEodCm9gr2tH5f0FhNq5
MIoMOi2lIC7eLjyC7otAi6/63MHjyqbuioDfGTs43HxX3dlOnzB1702m17+7FFWd+F51ol4DXBaF
w5gjr5g0c15nq1UW2777IpV22fKk3TXrVueaY4VnTfLqd2yWOw2GiSNKV2KbIbt/Nv2ylGzXEcQS
bF05K6hDCGFIQRbu9QhlZ6JW1KB1HHf7KQkw8rN6fKq0A6ebI+xdaAHxNFJ1oH0I9n/sepQAo/mz
IeFflwdA1kueiyz9EJV33uJkvKrZWQUBPi8V+ks4s0XVvQj7BQ1nljnm3W6jAL4/CHk/IDKrg7Rd
cdwCv0uJnz1DlYcvO5qHIlBrT4qY0xEYNYSOn9t3s5w1U+s8Rg/rKgCKckMxaYc2HhxuWVphLCys
N4YhpPU1TQ2amqmm4wduJtShyTeYVePQlMiOsCl7zsQXmUXQE2ytGu1yNkvnYSJ2JqSbNQWbcgO7
JKCDBnpp8aYApxqPQT4INVS2UO75MTkQ0zzGtqCyQReAMfb4m+7+g2NaM6L+PGnAsdoce2axwuGm
3Xm5u2W/7Pr5D0VBX9zyJ3x9yhj1woVv2znbIwkob383uLaNykw7N7LZnHBrARAbdl5EByNj0wBw
hRQU8ZQuDTtXKt6PakqSZ3FkYXEJsC0arV3vfBEjoA38zmUtnzDXPn0SkOzEz7BYGs2bbsCbGppO
zBi0ST/3WyGfGI4RrgG0RGdQQ91ExOMlGEQwm9+9iHWVoRkIfAMrVrYfFAwL7dfGHi3SmP5WWEvJ
A1AiDc+OFlk8H1qYxxJsfndEcMS9/KWQQXGZQZEH+f2QKqY7WPfbvHDRiwuIHYhYKMmzftaoZjuk
sNoHGs/WJ9JmtKSwr4y9pqj64YQQzh1dijiiDMUrq6/S0LzoWe2Zv3CUiIujtHGJYKJq4Ra5Zlo5
wJeBWjBt8gdTaoBMOYHRr3dDN/1IJLnXGITbZPtbIeJeLmRB6rD4D9vFE1wCsOTGblZIEKH/F+8q
2SXeTzctSjNpHMEe0TraAHZD2AuQ+HRXxL5kV/0ar2MnY/u+ZC1XMgChdWgcyJ/aBuWlQ4lbKZQC
SnRri/WOchfbqc8qB6+NuxnAL67Ku36ciLhYKt9UY/x4nbZ6xtUHjaSuOq+2vj8OS/1imPOa7Fce
3Q2hOD7XK195PRJtlEewFtl9i/MhOpreYgYJL7S9tndGPRd49YrGdXMkDk/2SEzbOzWwJVtMg/u9
qjolwcZd2EO9S4TB4djiAhrw1Bsl82DGCinyPFZaBHKEkUdkEhnlyiih4WQ0aQhlN6XUbIZjj95F
5mS1kdXf++8qTmVwIRpjG03E0C0qZtEsxfkdhqUUdtXfg2pk1UxKouxFE7ibh0hY9JX6OxAY9rZ/
XnwxBXxEjlM3jKfkD9X+2C2Wg1e55dNuEweI4B+z2uEMYkvozjVawdNvK3eGJ02bn5zEHxgqgYJm
xdMHYDmyVqOBgTGQdskN6tfjZYR2fr9UfCO5qrXLGcSAX5Vu9wBuajrtBQ6qGMaQqLwP9Usyv+Qj
fjfiVUOTEXDK13sE2TildtMMpPdkfcyiRUvq4czXpSE4LRk+rtzteCogD7BWqJxeXL3TVlYwig9S
jiWmtrRUiwFAsJslFYdXfVtCPIPX8aqrQfo41iOId1tkSyPMxvNFQt4phOVJ9G4l6342yNAMHnzQ
vMJenclmt9rRc9QizLc8oPSc+be9dnrU3Plh/OT2fyHFWc6MYQupx2gBMpKp8GCoSJP5GBwkfXrn
ZrcgpfH43Q2caMZ/2Nfj3pBwCvEu/HLnkKQXAv5y1iBWvG4Bga/NAom5bh87bQFy9Bpc0eiKVaR+
pHw0NQ0A1YZd3T4ru98TiWtxS2tq4I2+wPcrLP0IDRRxAwsNgFb6I54EnOJRMQuKLWuVoy9rYJV9
/Qn8aZgr4EjvLNToAfBJELYocpPq3jyIgi6fPmMfYAmUyHA5KqR+/HmCxhgi06A+5vshfVSGX7Va
j7MbCJsCPrXvh7EuL2Z516HAu8tmXPL/wCLQpEgIonLQCRilgYeMs6NC8AJMy4zB0MRSgDaC7k/g
MOLlzM833qZuHVbcmaRD8cmTgLBgfQHkO9SIGUoLHYYGSTdUXV0ogRkR4CbvijSmE9vV+9OCvkgb
3fVLlpYSmTtLq5Ppzi3hGnkG5qrzp46LC3Q0yPN8AjobV0e33JPWL3PAS0Y2kTNBRJnWLzxjWALO
KN3zGFoKwVYO4U8yLGZ1mVgE9+uQzGg8GsKVdXeAEQZ9jQRwS9W5M6K8x3OnBjIF/zzHZ5KgRjXP
hwWMADR/p01pN0rJMjJdzwi1I2f1cZgFI8sCM5tyBZWiPRBd9hUr757FAVz4zxt3xa0paDS3flBn
i/en+jMxsScli5gqkNZT7Qqy6M48SIFbDlLmsT5T/RAzqRwcLmUIzD4V2+SX9DBB6Qy7STNB3ULF
Jc7Qk4eYOHvfJsZgDBdI9QfCr9dSqAg+sIJbKnZqhyggC3ydLzQpAY55YNsw6272An+oEYylB7jn
BoEQFzsxIhyTXKP3XPzWNpyhb1dqyovuH7hcq3EK4BfTjXN5Etdjf/EhKxgC837O+R+vJEINhdM0
cGiW+sFDFzNwBFyAoQ0d7vADPTO2L1leM7INZtpO8VfX75OQTuvjaOAyO+W5pHoIn16OSGvJKwX3
rwQglVlDcVM1mvxKzq4VxaXche+OwU4DfaAHFmWkOYsNduEV6J00KNHh2gjAB87jCaRCPkXVeegf
jFaIVTcqg8iQJ7LZU4LcRAAHVFhkFiNC1zXzjh7H/zSe6dXj3Fam3u8UxAfIHYM1pkakT2rpFYkM
FWzR7J++ZOnEZbid0rond1P/TZS3GwNYQAPqsYXE89VDanR8LIwJ6xyjxriqM3y9YKp6CZwZGze+
BYaE8gl1mGteks8WIarqk1dd9QOYh9H8AdiazC/K39AvJtzV8p7EFyzQX0XkyCw0QY6nllieWTUU
KSzif9rQwHtkixxd9dSU10UDNg/1y9BViTiDBK32LSKRHOhr5DKUqX+GvBAheZl76IIhXlf8qI9y
BptWV7J+W9F00ux1aQPXuApaYLXEj9RgrSGD+TLLIlmI7Szz9Mz3AMfO5FjfyMT4mgDirCZRZmHk
i0ZotWYQ0aeOG+U9L0PLmfWnCPVhtbxt9cPtQTHlGAxrs9rxDxK4IStCskw1hiBMwebyRTYvcTKA
SZ07ylf4X1c/LzvtV6wkKj2Gjl5Jj+DkesRui0e1/nnuNM5S7v4kwXEDVbsPxJ01w8ISUwSveZk2
/VHjorrHvZkqWEWMt8V1+4r95rX83CH2rDH2KiyXGphAa1ZC1DCUSz4/25QXu4TIIwDA4pjGsBvo
YSAfw16bEspQ85kdLW2AlMNj+bQuVxRMWw8wC3fm9o2oXuUkv9tM19IK+9ocDfpVgA6O7dKgeaaZ
2JbJ7sUErkxhIWVqOLkkhmTCiPTl6nxGZcZEqvaMObw8dNi3K33KDbRPxIi5o1hF6oMT50j3bsZv
LhpGUA8/YfdwjtApp+m4UhRytzfAXvdcknASOPDrpc3Z7b/AO/Rh+jVudt8DZLIhJ7h6f9kdxGd/
8eI5lXfM6VlTYhoKflBiouPA44TAq22jK83mgk1w4uo06yXNWt6TZyw8+Krh48+gQrKeNMKu+2TZ
zd/+/idClmiB5I8ze05qKJfg4iVSIaVK1sO+9otzN5Iu85Fi9JKfZO2LEmS4Mjz6xmaXzNZy8/cS
DoTX5STPcJahZyg/jR3O6OHP2bVH1lz3bNtybPS+9fVC+ZaVnYOReJAeq/zgeTjCt9v2eK/rITIz
KARr808bGsPbOyMzrg/67wm/rUM0GmbPt/hdcQ1778xUxcC1wfTax/DIWhPeewfEU5+GijreI+2z
hNXAPD50Z00RJcuIotP34f9sYjIrxgnC21QSlDWWU3ricKhg2uiU57eW8pSrudloP9gjotf8kiFa
mDz+3rlcDAQfbTGnOnwXWxjPDQTUkFGzk48PN+v7k4nmoClg4KgVFEj0CbXUnoxLg0wAGEzBPsVa
EUvIH0LBL98TfHJ9b7OhZEpAPXE/OUbXlAV7hX1mLYOiqv6ojU0zWjB9agCbwne5DNXyMQEErHcT
Ditw4x2zjlSDOHVEe5BDrCJP7uAsmQi5Ja+pk0rZ13E5xBX80CK+fi+8496UpqQcDt9c7QcEkrCM
d2tMmUcyZoczbYa170z7vTMwIJOLMS/BGTZHKygaCedr/FMnyd3NHL13vcHQypQsS1DhY+yEJBFj
SWJ4LoIZM+Ek6ubmOa2wbon5LJwkP9tUKALo4/3C79uVAM3gE+G+YcKpvWeg/vGHgCgTv9ZadN/u
/B40yRGvBE3z4NXQt0Ly4L0+FvLnHvvLoE//pD0jnNSPuTdrD0UC2WjXpPOxgIulK+NM2aMlDGCd
4GeMzwE0dBB5UNpxesNmJ+HBtFdbU6khSmJppbzQnJa59HIy3wQsxDyK2xJ2jgLyAvTxN3KEzbOt
EouIwEozn4tKVhdMAi+mTyGLHo5E1VygCBdBKWDufYQ038jjSOxHYhdNIb0llIdzHiy57X+Uv0V+
RLa9f+FT+SmfohAk7PUCa3JF5VOoBLTMyxl0BSpkDa83mu1bgYpLKWYE9HwGCOYNkrLhftYUpt0C
e4pSyJ5fFbl4JpsiCVN98q+a5ztg0DZSRlwD7T0fqF94wSwtZl4yYjtouFx/A9m6g2RZFxCBlAiw
5EP/iQmqLJAcVy2fLtw7I0TUCCyXExJdy15u3LHraEYlGJ2cfipV1WIG4QSPc4X3kq49KFvwwDEy
lQnrGVIZg+z7NevUG+DgPS/oodzOgi2OCn0rfI9x0c6P3Yz5S4WqJKAs5jfR+zXNsG9orT2BeI5m
YhHRf4zUeYrYJDsIJ0rhvjR73E6BW5tGid0hcJaQtXpis4DRVeTNwbiZyLeYnePjdkOYbLZTv2Sx
DSaGNGb311QJosS7Gpw48x4BpY+wHV08vK/HH+cKUBeZJkrY5PnogIFLj3S9f7MKv0qJzUx3li6T
jesKoZX1poWByfij0Caghl24oW6lcPD2LLwPfj1cGbeK2o6AcwzxSfidjkTv44AsWg+aZENx0iQw
9UvxVBz68DiR0UXJ+vAfO1zHZxkZ7u1KEG8AxBaHu70fMWniY2kQH1FqdCznmXlKHMIoseK2NP6y
P3jeMc3mM2Su5+eOUjYkUyGbKhy1GPOT/wFnn1BGvCyWI5kmVFfY0EE/atT/yWI15kRrh0ecsUAC
pLt+0voAs9/TGfWZxQPrsJ5h5S17jd0J8FYwgFhdrqFGsDcfLGi11OJG8dRQFEx3W2dzAfGRnJwp
KMz4NHvgT2FB4LvNJObDgypmCPsHJNhc1blKchNGupvryEMfe/pL2auiFGiYXEqBSceEny4K/mHi
ZIpCQh2zo3pI8qhaNPq4PNUPOAU1ZKYkPIbTaABuP4PxIV/v/kMee1YEeu9Lw3eyu3TrBYmUY97n
KIdxo74uRmDzoBBGz/FwZE/cd7gZuENybomaxz4pygdjFTvm7ZAHYquC3bx1BDjA599lOmkGt93H
pe54cx/U33IswnFPtRU+lE0/b2hOUg6PKDo1LmNY249OEktoRej3HcXsCWQJlnT9ryOtNiTw4IVQ
7LVFYQBtoaCoPKQA5365grkjOqix4Iew8LQAeoUAol4FWe7R9r7OETe27rIGNFDc4XtmD3RH61oV
JPhW6B+fMibEV0W9aJ/OIdrBY2dHLZnPNaaHrttuOniCBlnbtGs3buuEzOktGVL4p8kp2hslcojz
fJWlzYa3wKR/Hjk3TC7IfB65SfdRkzWJ5t5cHdLQNHpDneEZ5z73hsTfDaoTkNnKeVSjsXzuiRz8
2QoJNH9UIkm+9U6C+6koUlppuwPf66qojXsr0JkIvZya3pSDe2qQPPEQ2Ldz0tJTMyMXpPEWlACW
juWuHhlaECLhBcrAg6EEFba0QPUSB5XiFijUmnPxllzuiD3Fl241iyD5yMwvvcHJD+EHw34vb/KD
P2BrgsqhLlmFt/K1mHhkNGn/4dGIY7foTh/aFUrnwnIhusJYPlHIiAs/P9hq9qCn3tn6PzVH6Q79
RByE54akKqYOZfEl79YaUdUlQTOGi9njmsWPE25KlKcgL7iHf2Qs1Bk46Mg5NhGB6ieIEZkrWw/W
7Cq/TCkgke7gKN/cXQBhk5EzaP1uG4Kl5hNq2RDIlKPqwdohaQuce2haguELPNMpS1JGi1cNFvTS
k3x8BS72mpuIV+57TNGznZ18sOaEiTWNUctk+mhh+01fF561kpGWNpMhE/tN+T5nq5vNalcmlmYm
c7NqDWEJh2/bJC3twhBWp5DYZPL5e1dTDfRkBMzwg8mvE0STAa7HcfL5+1Rcj0pzu2akMobwshDn
+Ko2e1+rvMlxMrJFtP9guF2tZ68b8jVm6bzmtLxMe3EL5kCblyr5CttHZDv2zEhNPO/kZQNNGqKx
uW0OgDNU/kCRIOPfUsR12ftorKUSWvQV1tZJ8uEzgOHhLOySst7cf5R8jNCJWn1hJswJ+qAunJws
kZbnIxIv+fqittTFZvg7iRvwvifqiikkBiP+0Fet5BLsDj/7/8QkBhc7p/poUZ9dd9X9jCPH3h3p
9PHbwCJW63Sia5WP7oRjVGiPXY8c10XyqWGSrlIII4tbqtf5P0MSAhAAGekV4cP23cYjFf1rbPjj
qDGDKlI6aqnnQJiUVyUCUmsdKEUTwhFlLVvdDn2cCZrDbzvhd3O5dzjrHwKDh9K9ZZEuJ4fEdke2
NCIZcm3mAwHwfmf/Qg25XIAHfMsWZ6dc5oAjtd9ipsfUZ3yWYECF0e+3jfCaheJpHAr5efiluD0Z
xe8RpLeE//LMzEfaWuS6Ny4EpflwrgtBP/K5ahzptV/VGpjUo2eAk4iXNNlVoFp8QDbiAk0vV8g4
i3U5A6dHpBrDF31ZVadaU6869cwVGiCuDVrwfUUZdObaAvKxcn/wrbeQbAYdVDK1gUaTKjeo0F6A
S8YjhzUVoHM3fOudwS4C+XNYNnKmCkcKCGQPTVfBjjw+uI52un/vWp2Ew8RIyxBKkm0fSY4cr1hn
s9qgbx85wgJP6QjYtjX7ics8IuVPiFotZv/cIxrtMmXTNbZsbvOSUHC+/nkOCIRt0fyn+7e8JN4l
IlqXEBeyhPWV7FWmrYooiCEu+RqgxMU8ZBIhQimaZwqdYKUVGpD7xlPwCh6u0X+e8QRLiE9hSJ68
O3CoOCbKYbH/oTG/vt3zeuYgsqefJ5jsYZUuc1B7wL/GEKyE+0kSDcT0rzsoETfNnFv2c4auHQFt
aRBZBD3f2Ou+Rx+XM6YWq1WU/5XSUzBH22UC1HYab/Br5BL/rbG+mYSaQYN5wcXEWrZyNfnzHGn0
njPZOhEzId5PJMoLKrY1Q5dNitmdDELNs1tsYAn2wiM4tTBNtU9bRddjJAFUi2+MAomS3i4avJmj
6+/AFt9SoPJ18+MXsvYSKiR3bYQHJxREtqlThQpd0X9FY4IuHCPTQO9E8utXYk2qv3Bwpt+Rd4HI
886qa/lDkvG9a1Ty+j71gGG0v/MM0Kn8gpM2jAKwj8HkI189HsaHkblQw1C4IebgfBeI5TZhoXGy
CXiMtl7/kl4+B6oz22OQYA8lA/A6Lzqk0ewm6xwl97/3lDY9Kn5yf3T2ZcvDbFxtvwJWLbwAJ4jU
ZWioJPtKoQ/TUm/gneWL4jcwTXseC0HsFP1MnHILqM6tSpcwlbkEge2XHUuS427CEdr5u5+6jmpq
dNuCHQe24E3wmf4con/dZSempoLHS60Dd8WW2jxJJpQ536Qtor3TtkVm1ucNTiF8LB1rmrwxvpQK
jsbU4TSC5+q9FYMQy0ASlQ4ZaB1MRGzqPcq+6rh2EXNuaNT379mJy8be1CQN/l+77lxzvZku6gQE
Fm9IJUdHFluy4QpGIjrZURjW987+GTxFOaAeHa8OUyhosGU3yyzYygzfvsWZqcI8zuhwYwEhPoNH
xCyBfQd3S591pJrvmRKVprYPSLTQ5cKZIMswVCreTGvD3vSv9j/vP8RuygraB3gKHvLsnGjyTsZF
fX/6AQK+qoCO/qvvSU7Fsb/+l8clMX+Svk3qDBqku7en7zkpiWG/0tlJsduNo/ILCyotHnFiMPI2
sWlDeSDDr2FHJ75ithE1WPUvN1K2v3JHVzpxWt28KHEJS1PbTvPFiLJ3rYXnE4enOiKwksijOvrI
+rrz2Du6RWrDT5U2iAC4hlnqel4TMvDm+0jeEhFvUgC4A2x/6WrbrdeVFSJnlrH1vYZ1XMYkjXEC
ED62OzoYR0rvvPml31cLb2eTSS6Zlg4VK3J6+P1FXIXfGemDO0Y2NySChV2Z/bfmV3Y1FZxd+POD
MzhFpG9n/xO1Qh3Lb3byUGnM/ZYZRM/JC8DVLe0X1FIZzc4sVR/I27LP7dV9SVcK6fa/wk/GvYdi
xEpIVEKLfRc3slub8jT+K6KwSpumaI+JxO09znPVtdNtdOIWM12XRSp82GvTAyyC2z9ChI6fuqvE
6AMllElYVMIVo/tYRwG0Uzgyx5yNZrKv/W5gUXw7jkeXHBg/J86q21QQgt7zyRqjZxZea8znY21f
Ye+Ps3sKnA6+Rrw1iVTYmqesx+AORTP2C0U54NdabZJ2dzveWBt2RWq74sM3tq1/QpLf+cN3XsEV
IVP4j/hMWtp7Emh82bYDoPWUpsgW6xE/wkMtdQdjUu9g4lEwpXIhRQh6OZRU8c+VfYDvaKqiSIDv
2yUZjmuNzBF8nhIYeK0cfb9Vdj8b5HBX+8AtsupTse4/Z5dvoe4EcLI+x4kRAdtD84DiJiScuy5V
H9clb9h9VEojCONC1zxeizWRDjcCaL0fAtGX/0Eq1sVprNY7MaDImYfncxQgJ0HLykEdtiAbsvV0
GAYjDacSJm0ImP0rfuVY90AO1ld43Q3PFufzPVi4H80cpQAiGd2Etn5+jhdGyjdjkV+ikokMjgNG
8aeuUvzhvBToOwstPFOZD1XUbBFF4J1tT72be5kM4jNK9vjTfW//DIdaiGQjU0CfM9XYtfeI0Yar
31WMGTWxOS7BN0m5PXRT0gNyfcZxjOkog6bY2a6AU9j54pvJxalVG+bQgMiFij9xZTwypOYjvyRV
Uzy7nGIvePaFb/cUpA1irSXn1JW2+22knUPOJHKpl9iCuamNuWLMnSWHRNFEfLRFMvji4GV5tOx+
WBrtnTtOemKwHndzK1Ihei/PeSJqboDDW2Ix2Dboo1i52klMEvaYV2L1/QoEMIerfY96fw4f8wDv
V/JFAKekkVCB8onAfe6v5P03L4fYbPXRjj9MidRuY6cpjRao9/3tNZPCsB1cbjb+vbeYDMs/84rl
ffUKIZmXHMxa4g3ZpAJU1j/z1ERTw40FIOia9jZa8gYhxAOA/3ceO8rg781LlJ3QCNw8+BT15Qjp
wUXo7pRWfDg0C4qJR/H0n7pkNrdt7YVhIuQZ7xPZ1oFUG++RlH7Qd2L32LxmCAT9euP6Uh8Kw+OC
9XYoxO411m8ljbPyHc42qzYo/K+BxmVVXssh6YeN9H3sLRHk3XwYJlc+KleNTOZIqay/PjtqxI5l
0WOykXKv6L14pQvGuxyLGUjB89VVEGKOzrdUVa/frstQEJdY/D43CQw2kUkd1B1s+cLpHN3QsoZE
CPlpb2h+FoCe/OoxEikt8kRTk5j2o8UbXIxmwQEdfs87fUCL2/sbjTVn6y5nBWpfA5HNNre1MpA/
ZbYHwUho87v88TMx0jz4Z2fUnQzr3WwEBSywwAqL8MGGl7gOA4O1yJXqhuqdkK+fzwKJh/wZroJD
0djJZmt/4Bce63w/AoGIRIIru/E4yrP63H4Cli58PRLSFKsNJgZOQulZXPzsocVHZjPjurcOqhXW
KfRY8erVmGXbIyBqP/RbfBjJH9F0YWqNz/uLnmQ95AnDUf7lqDGvrf0l8UPwczP42sNvoVXcQImw
lLCde+m6YaPYBatdPebF2qOj4o7eIq7SMP85xnsf4EZw/Al52rOPhgqjcaVz7vGzXURXqPS9dBt6
T6pPKZHyi3GbV1pwit/lvh/mVaLA4kLvuHIXXp1lV8BlMWADHfcwHI0Cikw/Ve6XjVG1dFYOeTn/
8f3GfPflbyYLqUfOvvxOdJUOO48abhLP5G/WbcjaF6IsvfTpeaJSX04MWpyB3ZiX/WD3c6/9Pgzy
U9iZhow+M/Zgick/9k14pq7X6LXvkPBKq+IRcJfS1bKYkHRrPFgKlF5sBxk3KkUcEJByS4p0Stxd
aMEGqrBrb1/KzcnYADLtAobmPxHaajvh1NrD7QXkDCyF/q54F4LnvFjJDt0rUFWBMLlEhw2GLKKq
Grtq3RzyesEib4OycRoauwLswWgkXLvl3M4gbLdv00nUagnNHpXacBGFu/acpDZsjWxuvAD9488q
5uqlIyyOWGiwUbe8XUybg9+FwwNVbJBlkFiTJ501K3ftjyOPc5U3xZNnUqkVaxuWDtpo/v9nF+Xq
xBICVtbdNazmfdMQGSnOY3tLA4lZJy3O7Fv69U/sz9D9GErcenJBD3hG1EDQo/h8DgMwbzSyfwXu
k5xIha+fJVNDCyxbvA/W4PFm9aGcTeQBiKcI1FOM+CEjfEORHdV9UXcQ8lC9wNI2828yefg8WZmL
6tDvQebQK2WNfhipqy0DhIU9f0v3PpDoPFJ9qqBZPIFXmRfj2aSzOHjFrUC4qB2eln5dizNm0nwM
kKS0yMfO6Zqp4NwPQ8JdO1WVwnkQObqULrn6E0SEWDi1tUz8bccDOS3a56feM6HfzwrxeBWpcaHL
l5FEnht8ZC5kEv7OyYABP6ypwa+GMltWIRLDPNoPKbph+8/9mXfajXZbpi9pOVwgOvUpJKuipOeE
8Nshg6lJ7hpEzhSazIobNE7Or5NQSZk15a7cGlGgBuHvJb/PpPnULDf52bPRPwG2m4/H4cIZmTz2
Y+linhJym9zxeyGonwrUJho2uSdeKJ/kip58raLIwkGRUkiNf2kTTApzZyU3wKjistm6h4Q5UDEv
INWc7mCUniUMKh5pAxsdqx7d1El8k7ZDH8ugojCK45vRXtrCdDRh60JfcCg5KwtcKfRRS7Zn0liO
B+Glzb+exSjosUM7uySwcRg7ypXZwRcHiqdyJyqCPziZVHKq0ABNmRYpHWZZAK7HaGUONXIpt9je
VuQcbc+4Oa3kArpx89MaeiAhkphMiqr1Qg3ov23MZzdugylBJRT1r8gLbntIR2SiHWHiK9Kv/RsO
7qIQe8om4sekZW50Vc9LRXrcndjs+aJUvofn/qUfOO9oCS9A0eSC1+on4JIFgTm0WNqnddY/WY18
wAX/bL11LvMHC4FHwXOhYuOk8zP/ylTsiv18NvumzSmpbMrLtJ4Dqd7XhxUCDMhpq9Nk+r3DKC7L
ThqiUPo8arxWblV4lzuBsoBEJ8JEIL861c3y1XzxZb6RmFLoB0US4p/Ub48t28c4aF+69O0/z3lc
iWadIdO+8tKKo0cVIJGCEwfmAlNXhxqwI7aiAi6h4jCT6vUMxBYPZ2y52WkOHpBlofr+5QSDJ8RM
hr1ukBtZfTnFO7VTIsfhHPlCp5Y2uP31nx+/PpI2OtU/7e++Az3BfiuCewQ9diLZ9X1PiYfl66pB
QflJeF6+yvyRprAMPBZu23Ssm696EdayT1EDcnST2zzGKwCboSy/UL7bu4NxjNz5fSd1Tf74nUBR
4KReHr1uUDfeQKRAJFnh8Qkf09iOdIEJLCy1qTfP7IfyVvu4I3zHOuNPkas4fGbXKbs/mlaKDO18
eTabbNQJCvTWS1++TWcmyTKAK3yZQHvfVsqCQbfD19fIprg+rb985oN6LrbA8qPC1RAGKvlw/Ylm
YNm/uM/xt0WYH+mQJPF6Z+8ai9HqhLrgii6OXnVtE05ziLsK7y6fO5i8YLABvFmFLGodR4YPF60D
cskSKekfTTiHefSwUNMTZ3pnUfhZUhgkIw7R96AvIwt3juHjvvOirFLAOlTnYnwyGcoyEHAWwv88
mJIYLrrU/jk8rp3xNSA6ZrL4jygDPYPOBrTgaK9TPYCY0/dWDuk6Se9r8WqpuI1154PaKXEuYRwI
u5dV3+toKCqmlL/QfLtSSRGy4Kia3tiaTqamHPGajrflpN9FKRzhcMxoRN01Mz1wqBgIzMng8Pfq
XGgqbI2IoexZYdqMrlLOzylcxzlsQ+GkgnfUWtxLybR/av1l962W+eDVhxMtRgIfSFWpe7iBUVoY
qZLGSJi++/8YSPwJJGB8KTaOG0e18Bcm4MO6GmKIATvgJVaPgfHo5UGQ8BU3rEP/j/tEMmL81owW
6cx5ni8eAJmgr6xc7w6bKlMm5YVGn+rKXlx1Ni/QTmCI5EHcH+2zufys/1m7qKT6FQx4GiVp4RIj
ntrvQYuNQdRjRr3QH6tvetic5qly2+ILW1GHzK5ieGUP5J3SGVEjapTyTJncfl+Kxycwyrdi2Jz4
kLgdu0l3HfulQVrz+QHB1gH7h0K8SE2V6oLroVm7leFkRIZkTmZ6fPgAn/LbfGTJ/sF4y1QEERxm
APTmaXU+zZ3t/4U0pK7520uAHc+KpLvwpOiiOHg4t//BBZZWH0MPRP73r8IxKRfA4ae7KjBc59r/
Rj1D5q8YNJqLzrawZ5N92Dsl3cQ0vCZ1EuQJweVIcA8ZnxUT85g3KsLG2/vYp60+G4OGDRZ1i4dA
7+hrLd0NZ4Houf+bRM4UvmwKOjiJE5hvLORLH9LSKQRNLJ8BnjhPhAtF5oKSYUynTZHWYE3Qhpof
JDWS1QSmjSZEw4BppW+V8hv/0v0LnpOwaa9ePVILn3xntD1/ALK3SVICLLyuzleLtzrqKOQ7YLC6
2RjrxFUqy70qH5PEsTewalC0+SxvOMPGxDL0vAREx+eHqOAXsGj5d5p1Bv6CyYbgjOyd6go54E68
/6IUBnQC7DAsrisGUbHwg0OPXzp6tEfRwalF9bFb9AlxJbqZZZbP8/hQXQubWXpBfEb1Lbhwc3Hg
rlJMruspPRuV555tBJSaQqZEon5K+3qQAngO4cuhJsrf5tG0qJKCxyM1euAcp2T+gQn+P71GNIJG
fmLAF0217uj+yY+Vo51F6tt/MqU6TICLGUuYkZmBcQtOMFYs20dRHvjoe2Ac320exnYApmCY/4DY
GodAaE35rW6qARN3njsF+EkZKbRuTVyc4YsR/fszD9vxuhYrgRORYJdDvNgYN1QJ0CYB8WqgrZzE
ZpmxkB8WDUmLS48VUQamwbAt2uCrd3H3i993mvNos1Ojgo0SBnS5M/wejYMYQHk3yMmot56eDH+T
t3KVLhOVeXqyc5VjUBzjWYEdrk3x97g+jSeReHxCaLMYu52whCrRwhjVcYLsKYwJoCZv9adYfbwe
vQdG33aGWs1xd+a4WMGF5vLtvzWlXk9Zyaljl07cjJ+uWZw+z+OG6D6wrj3i+EfwtX+IKuufs74b
En0drmiwceapSYBJrbYo4UDWbvzQkYypfuZNnEtXYsODY5TWLhCrWLXb7v1ybSDZrlBvOZtF4KG8
IVqp9IQYnMhm1YZVC3YrWrMwLtE+6cMRzFNkWC63S3POivNXRd6YFQrjrmr0Iq6zewIFhcKlIBBc
qr+T/qAQ/+tJRnQAPnX/7PuXVHHLFxnfHDUUA5IFPSoNOpk+/1ovKciJxnUPuhiB7OSfW1nA6Dvp
MVzKtGMVwh30gvSqgG2hkINJJ0ej0snLjY+vzpbbjLBDDJ4ZqvCelhu1g3tIadUeXgxh7upJWap6
lFa6LlsKyhS+HE3LHS+wjV0MATSEXcRxDsmWJW5prtMAr2g7OwGUsRsh+QbQLmnCO6IKWso5Ys1s
5hKKSiXZgbcMBWi6x5SCAxrHggX8I3A0iQOv3n6Opzu2SqpP+NIbfmxYHce7+Sf0GkwfXxxgJ5rd
eWXsqrsg3jNyU7v+oJzJUo/2j6RbF53Cv8TcNlTtyzgGjF/Vl4HLdX9xZaCEJ+fGbhiV398zck1H
E2Bssa7m1VQfRYehyu8ENw7vlZ5qw+KGes44W9Xa41Je9nukqIdi+gx0muKd1TSJlP5ZSs/ZxD+8
p0XsEb1Zqppz3uMCcgf9lzNIHOKrj8szCQIBnpNOvxkyheQkqMKKmGM/9UQ1BFj0NYykLX9y9qXW
tcbM7Hbp5jJHiw603W3W4HKwysisvQlf3wychDsxq+swyZkcD+QaZVpEnQb/t7qBHBayTCAp5KFW
xiv5+7SVf+c1kEigDnVrmXtaEGEC4IjoQ+mm4bFO6MGtGpThWqiHU+0Yt3h5C2xw+BLu4nsQErW/
ZdsNI5HSPOU9aIF5U56x34hakTjfW/06mhQTpfQKNQx6q80M2nl5x5Q3PnAn0GKA9FYXrL6FihY6
wMmhPh3j4nP3ZUAkzdK33jlJMvAiocLKXBhyQEIhyptcktg3vHAZ6lm4U9QljdYmS9e8GAsiMm4u
YXLcO0K/GQR1alN05q2DMklz4Wyo/RjDMfQp3R4KWoJPoK24Fgi52uBylX7fG/ZDiS+OivseYoxg
VW3O6mG9Ew3D/JaDKVsb1Mfl56oHYItg6reXUvOVA7Y1Jm0l+n8q6C7Oi87wpToF5EVog/Z4J0/P
rtaPywOj8g9WxdB5lgTlAhGH7m2rv7Hyn0e/H+yZCrmjiRXiHo77ZNFTrIuroHfczcinruGy2wLB
NRB22ABrcFN+Kei33mLgJ5GcOa3YP+cJvRMulxIAlUABbazP7oGjxrU1/UJm4voVcmqCNbANU7KR
Ae9o9HFO32Efb9No1wSvsmZAJE8xFziz6K1WqmY8WYdhPzevafFzcSP/qnQCXdZ1gN2dMoig6Ebo
keyvIXDCi51eQOqCwOTN0SW0hUTOi6CxusTg42Y77lf/hTALX2BYBn3zmn0I8ZE8RftDvKN3Pg==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
