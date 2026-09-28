// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Mon Mar  9 02:06:05 2026
// Host        : atlas1 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_fb99_msp432_bsl_crc_gen_0_sim_netlist.v
// Design      : bd_fb99_msp432_bsl_crc_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu200-fsgd2104-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_fb99_msp432_bsl_crc_gen_0,shell_utils_msp432_bsl_crc_gen_v1_0_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "shell_utils_msp432_bsl_crc_gen_v1_0_0,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_msp432_bsl_crc_gen_v1_0_0 inst
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10352)
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
