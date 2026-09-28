// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Mon Mar  9 02:08:17 2026
// Host        : atlas1 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/dan/corundum/fpga/mqnic/Alveo/fpga_25g/fpga_AU200/fpga.gen/sources_1/bd/cms/ip/cms_cms_subsystem_0_0/bd_0/ip/ip_0/bd_fb99_build_info_cmc_0_sim_netlist.v
// Design      : bd_fb99_build_info_cmc_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu200-fsgd2104-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_fb99_build_info_cmc_0,shell_utils_build_info_v1_0_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "shell_utils_build_info_v1_0_0,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module bd_fb99_build_info_cmc_0
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
  bd_fb99_build_info_cmc_0_shell_utils_build_info_v1_0_0 U0
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

(* ORIG_REF_NAME = "address_decoder" *) 
module bd_fb99_build_info_cmc_0_address_decoder
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

(* ORIG_REF_NAME = "axi_lite_ipif" *) 
module bd_fb99_build_info_cmc_0_axi_lite_ipif
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

  bd_fb99_build_info_cmc_0_slave_attachment I_SLAVE_ATTACHMENT
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

(* ORIG_REF_NAME = "slave_attachment" *) 
module bd_fb99_build_info_cmc_0_slave_attachment
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
  bd_fb99_build_info_cmc_0_address_decoder I_DECODER
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 17456)
`pragma protect data_block
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
YUt6/H3Cp4BlpCf8T74=
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
