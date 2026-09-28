// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Mon Mar  9 02:08:26 2026
// Host        : atlas1 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_fb99_build_info_host_0_sim_netlist.v
// Design      : bd_fb99_build_info_host_0
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

(* CHECK_LICENSE_TYPE = "bd_fb99_build_info_host_0,shell_utils_build_info_v1_0_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "shell_utils_build_info_v1_0_0,Vivado 2022.2" *) 
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
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
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
