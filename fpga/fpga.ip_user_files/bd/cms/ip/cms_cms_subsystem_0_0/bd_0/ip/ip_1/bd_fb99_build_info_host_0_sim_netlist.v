// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Mon Mar  9 02:08:27 2026
// Host        : atlas1 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/dan/corundum/fpga/mqnic/Alveo/fpga_25g/fpga_AU200/fpga.gen/sources_1/bd/cms/ip/cms_cms_subsystem_0_0/bd_0/ip/ip_1/bd_fb99_build_info_host_0_sim_netlist.v
// Design      : bd_fb99_build_info_host_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu200-fsgd2104-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_fb99_build_info_host_0,shell_utils_build_info_v1_0_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "shell_utils_build_info_v1_0_0,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module bd_fb99_build_info_host_0
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
  bd_fb99_build_info_host_0_shell_utils_build_info_v1_0_0 U0
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
module bd_fb99_build_info_host_0_address_decoder
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
module bd_fb99_build_info_host_0_axi_lite_ipif
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

  bd_fb99_build_info_host_0_slave_attachment I_SLAVE_ATTACHMENT
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
module bd_fb99_build_info_host_0_slave_attachment
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
  bd_fb99_build_info_host_0_address_decoder I_DECODER
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
DBgX5Sh9nDA1gZh66UM=
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
