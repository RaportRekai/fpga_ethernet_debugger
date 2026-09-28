// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Mon Mar  9 02:06:06 2026
// Host        : atlas1 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/dan/corundum/fpga/mqnic/Alveo/fpga_25g/fpga_AU200/fpga.gen/sources_1/bd/cms/ip/cms_cms_subsystem_0_0/bd_0/ip/ip_26/bd_fb99_msp432_bsl_crc_gen_0_sim_netlist.v
// Design      : bd_fb99_msp432_bsl_crc_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu200-fsgd2104-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_fb99_msp432_bsl_crc_gen_0,shell_utils_msp432_bsl_crc_gen_v1_0_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "shell_utils_msp432_bsl_crc_gen_v1_0_0,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module bd_fb99_msp432_bsl_crc_gen_0
   (clk,
    reset_n,
    s0_axis_tdata,
    s0_axis_tready,
    s0_axis_tvalid,
    s0_axis_tlast,
    m0_axis_tdata,
    m0_axis_tready,
    m0_axis_tvalid,
    m0_axis_tlast);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF s0_axis:m0_axis, ASSOCIATED_RESET reset_n, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cms_aclk_ctrl_0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s0_axis TDATA" *) input [31:0]s0_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s0_axis TREADY" *) output s0_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s0_axis TVALID" *) input s0_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s0_axis TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s0_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN cms_aclk_ctrl_0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s0_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m0_axis TDATA" *) output [31:0]m0_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m0_axis TREADY" *) input m0_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m0_axis TVALID" *) output m0_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m0_axis TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m0_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN cms_aclk_ctrl_0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m0_axis_tlast;

  wire \<const0> ;
  wire \<const1> ;
  wire clk;
  wire [15:0]\^m0_axis_tdata ;
  wire m0_axis_tready;
  wire m0_axis_tvalid;
  wire reset_n;
  wire [31:0]s0_axis_tdata;
  wire s0_axis_tlast;
  wire s0_axis_tvalid;
  wire NLW_inst_m0_axis_tlast_UNCONNECTED;
  wire NLW_inst_s0_axis_tready_UNCONNECTED;
  wire [31:16]NLW_inst_m0_axis_tdata_UNCONNECTED;

  assign m0_axis_tdata[31] = \<const0> ;
  assign m0_axis_tdata[30] = \<const0> ;
  assign m0_axis_tdata[29] = \<const0> ;
  assign m0_axis_tdata[28] = \<const0> ;
  assign m0_axis_tdata[27] = \<const0> ;
  assign m0_axis_tdata[26] = \<const0> ;
  assign m0_axis_tdata[25] = \<const0> ;
  assign m0_axis_tdata[24] = \<const0> ;
  assign m0_axis_tdata[23] = \<const0> ;
  assign m0_axis_tdata[22] = \<const0> ;
  assign m0_axis_tdata[21] = \<const0> ;
  assign m0_axis_tdata[20] = \<const0> ;
  assign m0_axis_tdata[19] = \<const0> ;
  assign m0_axis_tdata[18] = \<const0> ;
  assign m0_axis_tdata[17] = \<const0> ;
  assign m0_axis_tdata[16] = \<const0> ;
  assign m0_axis_tdata[15:0] = \^m0_axis_tdata [15:0];
  assign m0_axis_tlast = \<const0> ;
  assign s0_axis_tready = \<const1> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* IDLE = "1'b0" *) 
  (* PROC = "1'b1" *) 
  (* is_du_within_envelope = "true" *) 
  bd_fb99_msp432_bsl_crc_gen_0_shell_utils_msp432_bsl_crc_gen_v1_0_0 inst
       (.clk(clk),
        .m0_axis_tdata({NLW_inst_m0_axis_tdata_UNCONNECTED[31:16],\^m0_axis_tdata }),
        .m0_axis_tlast(NLW_inst_m0_axis_tlast_UNCONNECTED),
        .m0_axis_tready(m0_axis_tready),
        .m0_axis_tvalid(m0_axis_tvalid),
        .reset_n(reset_n),
        .s0_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s0_axis_tdata[15:0]}),
        .s0_axis_tlast(s0_axis_tlast),
        .s0_axis_tready(NLW_inst_s0_axis_tready_UNCONNECTED),
        .s0_axis_tvalid(s0_axis_tvalid));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
gRSpMXdCuxiGD6AiKOKpAgrtqamqzjsr5XSg63YEwMS/AObbdFu1CJ154ks9CEpbHGSODVWry+Wx
2vpf2gHEbB3GSTUiU1tObED/l2EfR52hk0QuWFqJRoG1Y63suJo9cFYp4guTPUxa7FV2HkxT92fF
gjiw1ln2YKuoqCkfglk=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
s5GyXbPbdwaO0ji4uvnR8P9KCADWzG4wsUmS6NcI8MeoC8xiSzk4Ocp8CqowAa0jH1eTo0LkzC8V
VBD0NN31dB7D3KCdtfIuTfUi9jxwWQP/mWeoC6yDBvU56MgQdKg9gYPwJ8kAWiguA7MUlIXjVILD
Ak8e4gSjPMi2v+caTwpfkWLcgH6gdWKJanEHnMlT7RgakDCKHPTrUwKcdDXpiFTYwiOhhahmJfxe
RIqin/Kz75Om5yJ8Ak0eKYw/1U0ngSQcv922atuaDlDs2KW79wvtYArcHXXs2pczx+DXRp/Q/l1l
TcdDyF27TJ8YPX01xGwsAF+AIrAiOs2qNVu8sw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VKDD0Xnc8FYMrGFLXZmqVGzYIbkvoMuqDDIpgrsbuJ+++DgYxfPOvhw5kW5zk7Qvql6pOVgP7Du1
rAkQr7sKkjAPsB3aXfV4Mf3yADeydjXpU4k3N4zAspvpXtx1U3slQDtwQrAi++gVtKWijnjP/QKX
KjeE2z2Mxp3Gn3XDrWk=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
N/kRdjIQauSodghAwjc+f5vhJZjDvyDmZ9X6qMUc99GAuU0BqCPpKP58UsM3OPuY6nrT3JttCmkT
hwG/a0CcrUTZfiMn+gejS1qfr3GcTMMaL6M5ZijklMYwvLDXgIPRnUQ6e9Fi679U9UFNDGyoi4tY
nGVHAAPRwywpfAj438ds3vLps7txCEZjZp9eiIxhOLPgaplI6A5ind821Vt5OIl508HTa3OyjgrQ
HdwxPitAn5RftKuBu7ZJkiLLdrwpJuqmQ5sOZ/ac4g21E9oonxn9qHWi/iLwDQxhaZRYlR05X3QC
s8rVQ9LQNJ3muy+DTOc/285nYHrd1jFJhAwhPg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
N8hVFGC1eqZJHvS7WWCrJmls+Cwy8ptOepi7Emz+BmUpMnMrexaxp2dqAzzXZfc5NpRwCqjmu4uL
u4vBMliGp/pqlJ+bl812NHljf8rbH8MkXk0DUl//0Z+O4uZrr1+uHZhHzQEx0lYMf0seZ3StffbE
ZaSghizsS3zhCvxvpdKnl7HsrECNNgZuJMJVGb1eJ6EiMxwSSxf9ZvpiPQuGDXyF/em+74VYPoKD
lLLR6jdJs6SNyV9ZDMrJ5J2x9La94EiZ8X7tyPHsX+k8k8lWcL524WV138Cf+x9iWAO1hfxft3+V
x0t3BIt8C2TMO4REr5vmJlOWAz3qZ6LNdlqpwA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
J/TKAD9ciBRQ/tT0UxT4UWCjn7kO8v8obunowngaROS2AXvA6lQUM4Rzybejb/0UVwdw4l9TDEXv
Ejn9ul6MWEtfyrjM0DoAObiZH8xg9F8ym/4FDr2iDQDY66d/me18WbeWEIJ0l9TrWBDbAkSmIGyB
5LL8dNiXg+JlEnUOpiHqAioip2E/D5ile9uF9vu72TYAClU6ssqlN5EbMCOCFzaLKgfAqfFj3FSG
r8RE5h5jtOPpo3rhLcdkax+WdO/696qcHFQ6UedkEmLNfpHKRsVupa3zaoUoy31XHuU9t23Qi3Jn
TrV5OSw5hu1/I3qEeCD1Y0B67EPV5RpsjT9sUA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XjTzP8CSEwtMKMOgh8InbRwTa3w9AU36nMUZWUoXFZd+xhP7edH9aJmTwd2SZVdIq86tihpqH0Wq
rEB9rz9FSZDdXG0P31/AA67P73NFkXgWSt9y3yBzD3ClioZ9z3Qmcvbw6YvzpzyZDc5WL8MjyeJS
lhcQxrCvGwRYEudvYRkOpi1+PJd8MDcoYWs67rmkCH2y/OPkUPedym2qpOzijMZ7QMGwm6bWTUnJ
UYiwDLaZmiyPRwXmcNhQ/WR+TJ8IP6d+te4ftXkJhoXvZJN3mCPxsvvkLzDrfgHb1zm9RCmMYUBs
65NkE4m4epU7L0vFbHEL0SzGWkwM6GM9+kLiWA==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
Eb7FvNB4vcE6HPpTmVW4islf4/x6C1HYiTzLt1pHS7eHY1qB/ofMbwKZu2URQj5HJGZjGqJM4V4g
N9UctbDm3+EaMl2ItgYk1/EnsWNTh5vqAv0WxjWLgHrwR+79iGq+Mn2r8OgmbqMYzi55qBFmEtFr
jizpR3mAn6KOcoXP8g71zRrj0gheIB0W87f3v8dYyIQV8YppQ8W1/Z427ZXU4kljx70azEUSo/tV
4C+xIx4odDfTenCK9nPgLnnAarcdY59GOzrwT83DDc/K4qQW/ShB97YpYleUJmOsp69nSH0XrXUx
zNbOBMiEqVe76rwWAYWL7t6u43tpwur8HazaPld3vt44E3hbM74xPmXpeZ4awU5XKgXNB4Lx41aa
0G3bs1/rwFn7ZHsGiAYbgMhqlhieIE9fMoNOjRLm+Cz4nPSY5tM1wBiqmBWPSgmZ4d+36ROKZFjo
cypbn1pFSwzyoqmlLLzhUuSmGEBADc84LH4uDtEFJ4TTadqjF0te290R

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RbrMaEshrN85kzg7trqCsHsIH5YzNbNot4Jvf5IDqp2sTrGKKDYZQOKsMSgUtJ4HQDN+Hfdp1/tG
MbjlyTDQdXZmNy+iGvQfCwEo15O4J0XiaNjOMymzQd4q+Acuj+e0dWIOWD0EOdRy7OOiWfH4wEZX
mO+kEmsX4zgrpMtNZNHOtHGNCFuv4wjqVobFRudaiyWVoI/5WbXiozTf5DQ8292G6022XJ+kCclf
5VPVDzdQMN1RyWCFajP2cuDj/U8n2m56NBIqsBjOVnFo5gNVD/pPPNQof/lIQPZKDWjEBaY+Ksgy
y7By7ZefssA/tC5/OKv2ElZA5UKNU9XSj6MewA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10400)
`pragma protect data_block
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
sqgeISYRQNMXThjQJfZ55OupH4+Vo2E5wWs=
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
