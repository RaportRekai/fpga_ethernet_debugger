// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Mon Mar  9 02:05:04 2026
// Host        : atlas1 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/dan/corundum/fpga/mqnic/Alveo/fpga_25g/fpga_AU200/fpga.gen/sources_1/bd/cms/ip/cms_cms_subsystem_0_0/bd_0/ip/ip_37/bd_fb99_freerun_counter_0_sim_netlist.v
// Design      : bd_fb99_freerun_counter_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu200-fsgd2104-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_fb99_freerun_counter_0,c_counter_binary_v12_0_15,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_15,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module bd_fb99_freerun_counter_0
   (CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cms_aclk_ctrl_0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 32}" *) output [31:0]Q;

  wire CLK;
  wire [31:0]Q;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "32" *) 
  (* C_XDEVICEFAMILY = "virtexuplus" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  bd_fb99_freerun_counter_0_c_counter_binary_v12_0_15 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
KdkdvVsuosc8qR9X5PxQ/ghTeTrEz4qKVuenhDR9wRSL/BO/mhSwQtiFj74UO0sGv0zvjAntaq/3
l2/v8gOiVKmM666gbk/2UCISA4OFA3FDR9jYmiXdNXb2qHeS1ywQz5n/sTR5iu4KFEfwrl3IXtQw
aEiGegL+CQMaovJsto4=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
pZCj3qT3VD1SCS5RiZExsqqu16KpMtHXilQL9p5/eBl7qrfQjT1VhFtVbYUusepbChjsCCmCn7hr
72SuHmOmDWG78UARN7MLdO/+sePuyS06ak4nAw5xwjT0g+9970uMWYKvTeeYqoz2i+k+zX60Cuvu
iwBfxWM22DqukHlYzbEFWhNyXIkgJe71p67vGdXBmqu4/2wmlwGApqBxlwR+alwZ9UGHlxNQS4N5
z1wHu3Cp8LwGRjlaXjElcY8RDpvyz5l59ey8ar5HXR9Zqf6e1unE2NdhzHhEGRerRFXoKZppk1HB
6kIEY4EHAWz+HvPcqoP9eoYKDazoAGkJRVP6YA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
gLgm7VvY3cNcNvdXvikCQd2nRniE4ae4hePOcAUlPDMoHDzQAD7Ngo12MGFns9JNPcCaUXfAmxL2
JNGojjrDRUWrv8FPV6FOEbDHs96fef8+gqLF4OqLck4kWpKhnJwaJjjzQirvXEzZxP+GsBKnkSp8
ceVlZJwP0F6XRv+RpQA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GeZP242oKQSNuofqDs4oIIXZEufPhRVrlFFeRSLY4VCxhMEMwfPrNXe33xO0zIEBoPW2X9mvUoTY
izdWQEtWImFzjzPCjkSLhEdIMmUBH02Y+Tw3eW5x23T0cK96pmoV2MH8kl99I27MN6stVd977fuB
Mjao5MnSXIGZ/uXGtgfUO9Zjs4/2wGmsI2/lANN2WOL9Sz4xeA8k40c2dNYgxgHoCwx8Ya/RYIZS
Cpuvzq4ZyFSNT/kMXnUmqj75/flpXT3mmyW+frexux3j9PxpKHmxAE9crvDx85rMamGiA4ftl+ac
H0FtL2cBqdlP60x+FjqleWCJoN6AYdxA0YZaeg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
URmEGftuxvv0+tViRUdsFNnPXucZlVDfUQpjjXkpOA38QUzsIL9j1pGGp9doC4jcg/9MD149BTSw
vAG8684a3k+Tx/8sFGl/viK1q8ty9nktEABSahv8Etm5ZJVAzQJT7EaOzrYqyywSwabogvGUmN/7
DE3eOn6+sMCiMl6BLUhYyK39ntTWNFYVPiheclbBb36V1vzMOQl0mvPuS4hDXqba/+qBZXhqeYWK
ceNfwci6SsRRef6hLF/1S+20r2uBxJeYJjyfWGGFEGfxlAOz1MiYUUR/bEHWnbjwIcJTBHQNRdq4
4Ryb+iPuKcsXU/8ApD14i6ScW+VBPWSqnH9w+A==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
NtQgA3rUKfJt+21sTot44yr4gmte57FoFl8Q/327tsRJeEyNAiwWZaZN2mbo2NFcvyN2GhDw6avJ
NsF1Oxs36P8shoqOOiloWWrdTcyAdMhdk+UjeZgKcNSqd4Js87w/5LVQTwjB2mcBDfe1jrivv+IW
ZRBC8NvlW5z/1wF7+vzXRMziLQYeOkLB0OkpIY+eT5cZXDKuZ+4l0FMPjd+El96JGAEHG7Q0qS3F
OEApYEp8+nSZnragoytq4pkhVJEC22ye0hBhoBClJpszCcg0u+Ugf+mYZsj8BC2uqSY6Hh/gpjjw
enQ7aEYBaUR7GCwQN7fZmNhZYtBkyvNqydRQcA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
CpIFM8Y8dBmpjtOVnOKcfppEFV+c1cRgsQtewNUe+5apiLDoRCdMyTqoCay7nz+Xagc0OvfZDg/Y
jSTsDjKVcEIyxOfix7iwjKW8Rz+a5wBIatI8wfCo7uLtuucz9otOWWI7BFQ2gn4VdQ73HJJlZMMY
OyEOd33tGjNSjxz3W07knDr1FwTE3BOfhq+Qj2ErnuV1dQbrTb3MiQMTnHaTCwtz6ip0pD6b5G4K
kBRUYe+UNXCMvSfNIN9MPSmolO4MjNwM5gnZZqLcR1hGuzH/Yeb/jPnhsZ7jFvlTT3nsM9JzMRAE
QwlzVuulHKQDS2I96arFosYPYMsalmn6CQW0gg==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
qinIxHFISC9r9LS7OKOuYVGM5EBkuuQNV1nDRui+QVNLn2QFCrWPeEClQIlNViKOt8MX9urHvu4e
l2L+eZKw6+St9cW9yUsYu36yoB4LqwG+vKvfR9CW82LGPyMAxdgk/p3n+F0Xp9Y2HaERwWDL99tW
V7cDvLLhyIwz7w4rI0BWWV+KMjXP2F5MNgykzZn7tzV8oY6MxOykFqRdI8DLAdlYGAs90wjJ3x84
S3fHciSox97FYpDi64v31Vb4RmRrwueXcvCc3w8gzjuwg7qraWLMYyPB+mERB2v1htX80PsWWVHE
QXkWiHWYvvrXEykUS04MmLNHpV8ZgBXO/NBEGn7mrITDEswk3u1Yviqy7CW2wLPQBoo5xW+uiu2e
8YZV/E+bAt+P/EH5RsC9alBgtuVKU1s9DaiEH8eUPEgJQ/TXwQW01pg8ECTYgiBS+IQSbld23aq3
goVo0ZMzRu/SA00Jmwt7upvsMkh9Q+2732ahu1FmlSNmyNGB1+bYf782

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
T1jqx5hmzZZMhPApzUC1oZLMAkHma8Ki4b2CvLNqxSn+MNWoTPomvQ775DMBEDai/gahYALsohdX
0f/e6LuPqt4zYtyAzmH+nRgOG/tilS1J674KsaHxudAfo4sM3awB/C4Q3VdYsO9FgvPQylnYKSGE
gJ46W+1Y789VQqPbt4dpnprhix6sLlwfww7We6cq2wu4PilFzovejouUBZqNMZHYi4suKcMcenp3
C7QRKloo8IF9yKrhGPcRJLQt2nus3bI0Q3ICxRk13Nrfhh/z4cdm0OGXz42q44snFEVy1lLxPOs7
W9tSe5ag3923oCT4NGGgK/gMTx5qXxFhV2MJUw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
V8UU4J1MnIGjZy+eJRMFhMRsl/T3WTtBm0u1UKtTI48ROOZcOIWLIW9C7mShj+1z9y7qtzw6mDCd
Pld3FaYTc1rWA3xswIeMJsqa6qn5yl/JiwiG1nj3bhWp5rGOz5KHRZurIRr/hn8X94YoafIKmHOp
KWtTF2de5Dy9F65CHUWMVjFicZJUf65v4bRjuW0keWpNGOsBBqTofb69xeWBP8CFdsK/lZ5edLv1
KjvzIl9fVlHGoCYBc4oq13WgVMCsR4CWnapMxsj5sNn+plkxAlpKFF6kvSirLnSWD0FF1P+SAN69
mGM05bTkHeePfqWOUv/N5NS4OTiyL3vAzr0Ikw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
KLW2EBHpWwGkRoznKBjQC9crhwfxUesErgPwz02xnVyqo7W4xpS5POXFpPE6zfC1NjhDhYBFRLzo
CcbB5VyRiUDEEHgm8TE2xg/bOu5/Q6IPv5BVpmOGt5ywn7BtM9p1F6E5knQM+yXjtiWIeOkxvFww
ien89pavimVjOACin9Xsgg0uk8i5vZYwfiljGy42zvkSpvhgVdqwXpdOoWe9JY6E8ZnkTD8iPABj
pohEY+8xW2JRXgwcQ/gITP7CYzLhE7AbQK3UVltB/5ReyiGhKF3BuVd1+/vJdQ/GtYTKI7boMB5j
XT7ndKCEi2ElmhlCdxBIAYnALn3aQEnh5vNiig==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18976)
`pragma protect data_block
eC/feHxcgipQh+m8KPUtS2lB4W2E2pfBCc+vlbefLriqKt7C3+ZGbsS83HBEyR1dneMswOsNEPQe
eKvRcpDS+c69rRi0VmokUgD28jucftMhZcexqtfbgiogS74sjgFpjqSwB0r35Qhhnh6wXXjBJUfJ
z4j8qt4vC/mMyJg1An0zkL0XWbvpebjaZjf8J1zwGgq9Oh3bf7xbKxCpOJpPtgd/whP9TmosHPGD
GKShQqOsUwttO/t7v9tqYAKrKWLujA+wiX0pmd0LO63nnNPbxYxExcKbvxwQer0pjYIWOyCI1hbh
irPh2DUkOqCWV1euu2358MmhxiRBWCZs0Lh0Qm0SWeyvQxwEPs6SGlqobzkZ0ZmrbGGXrpM82Ze8
JnhqXsU9o+HpvKjUk90oHtM5XtHCn+I9PqbPMzR1zR6LbwVkS5pfLbIWKQQL+54LtjI2Ofw7UGmz
JdYxqbm0CsH/ldkKMJ9pO4b3LuD9wGwQCwLv+ijXhpyu7Wx8dJLaji4aktcm1xTtAANRJz5KR5kU
NmcBV5I1AJhUJKfm1A9KZufAppY6SsolT77bwd6qOQ5G4ahIQbSrq8sXVxgv30SqzSVTNmvhOgGR
Z9EoRpaYtAUNiT4v/16D/3T0tbyFSuz1Vj0QfzYSSJFbY2zJgCGenZohnTrhjSPN/FGTf11hTs+x
VU/600OzD9nJ1KGULuOX8MXqf6l+7Js7xJbaQtWcP+hYYdJlX4enr5q9hM5C3VtAJVMQgJb4DfEQ
ZE9ol5+XZ4irLvbqND30rOCFHABZgawGkJnJ6i14S0uvrhrDdQsIuM1gUUCuu630UZLQrU7i8cfI
A9nvQ8XRa1pTG3ZLXCqjuLe/CCxLq74hVGJl3r6PgzQEeQqhZ0FcFx3r9L16SWKHCUG84PbHGaWG
hOlWB03340nBNz93ndZTrFwTSM7r1p6+3RN3rNlIygNRYCP7KB/5z6XnGyvReM5INWTc2teHQ+Mu
+KTOSX+VhBx1Z7VuwD4WkD/JmlZOW7TgbhdM6yCYovO1Nv6TEd4CB7sqv5lYVi5iqIyVs1MtXtr1
tOn2vec1uUjA6RwMdEU25yEwEXZkbqtdTWMPecVWo9ityiOfkibloNYRyCgMIbS115QYxXoTF/FY
n/PKuz7LXEQafBkXhvcZTKI9P91ruCz5GHZrPUc35P2cFe+8DjE5lFtp+/SToOrGFZFoKS/UG68B
K8QVTwJePB2PJTCGZH/Tq5pP+srXgznM+U3mOvbzAVkr/5cFFI4M/Rq0nhpc/0SdXz99izoVaJBM
AlgLNumRiL8HuX/8KnPdcnRVUJqzNRmPFi6lo6aBsitwLt/MNh/K9NXNJD6kLugMKMnB8q1+ZLWn
VA+ckCk6+FuCWx7vBnYyjuJhjBnK2EWDa35KQt74HWiAd7vwUJq8dtOqq6emQRIFqQjjuW9LMyks
cQdNHCRpZvkC06ENBaGTc8tNseDqbQTca4w3ZYyAfEh8pWdKpZf08KjQ8yKyfMM7HvwOHMG+mrIJ
pl+d6utv2IDxw71ZruwDNGci5dxU4IzCV9jq+fErQGF1ByzZsGTaD8qMpxnGlfwPOlwcO5Uz+Yhf
bc4oT1txIxBmon9JBjnxFIhE3ckqQt8+gkOMmswkIDDioYEAlT2AUq3FVCn0YEck+caT8S6d6KBP
rhi2RDlnytIdkHmiBOrm+W+Vmiv7JOWhD5p9CfvHCE2xT/zPVPYGiwrrPBbJpbutRsyoYic2f0Tc
yHevsD6+AiTnyUQ6IS6R25W7iSHurrSdD0oYorNPKoJXIBA76P/o5QM//gQgDq3SIHWDa1gqT0QA
Od7eWZJlaJCgkOqsnPA+7pex4OyBkoT+E3Z/P4EHOE6BfYkQPIl5YNEigbLnyOUPb9AlqzzMugD6
e6lmApvNVBYtv8RCRDgZxEGbvSpmCi8wed6eXrfu5S9a7A1iMy1DS6L3jHC9JoFFM0PpHFOjUWq6
fAs+eQx4G0rN3WgZkrdSSxzB51j10U/vjYWqoGeVsKxSZdMv03Zm/49ncCszMyPOw5Y9etmRiEtJ
4t0CbTg0BjGy62ETUeYqrvI6xdgPl0MwiDpCJerRfX5x9iNdAhgMmWrw/QmUhD3LfxzTVucMma3+
gDNKzMe47jLkjpj6vb4qGoy5j3l2cHxuyXnUB4Eqe35dP6O+70C3NPPaMsW4VBu2zd0YvhEwxFqG
kmWojoNh88d4MukSWexkCLdGWYEwSX2eNdWUnt3eC76rLvTwFidwaCv9Ld+yZTnwQbJpaliUAi2Y
PZH3mipNOEMCE4bvtAJiHw3c1Ms0IIg5GDpQR4/tGx50BwkuKyx4rDf7ZwOabqrmdOova0sHAXEy
sTJxkyZrY7dg5OgXAWP9OaeeYZmxAFINA6D4LKV/cq3hJCu7Gnl3JMV9M1I+O0VGTI6xlyCDvD+7
YqHuiC0ktrxmMSkHml/LmUBLgVSxYPiACRdLlTSqyIMTS1yF/O69DYOq4GYtrhtOMiGZhzF1zcOD
dnh57rnVc+2gS761jLMKoa2G3tC1CjF89oKJGuwbLiX2wDJRnkuOvpTa8+/3KkNAVB8uj+JrOiVR
V4uw8+1O9GBMjNu51wo+76a43eJVdwpiPZY2gOS4o3V4+zuNO9yRhyvAhiQMpPeDQuTw7JRTMv2F
TyclhEDndKYXDpi2A+zt806rq6dTQQ0wEhzEfks2miX0CtecooAkFIHXUa9jF8N50RXVwlseqSft
2bDzG5zLYEGjwIMTbI1x2ZqTe5zxX1I5ZWHnA93IKYvj6EKNTKjyMhpHYmetEQKArDc4fz+I+SWl
+9bnz2Fs68WOo8HzT0WMx7pAutnBgL1NljIxSWXSI2T9BX2LkAjXBiyDH0XuD4rsXcp4rNDx8ERA
2UNtBwp3HcTFMEbGYLv2wFCq70eLRs+gnLvzwdojYj7h5vDNAOdM/wq14G4Tvz8Os4OJNpHnfxZn
4qzFV8d3zSECoEzDobLOx4NA6BQdZyWszGgNQVtUdUsjOoKmvkOJMrMWpILlmR2Zm84zAYNMBTrA
X+VJQPwS+jOf/UABRvgn2/RjqX+B0glhktpidVyYp2HGWcLpe4PEslv5rOA1bqmPdSu2RLg+aAg1
jolyQz+66eqXfzo7aoG2370MEPGembqXp7mz7eFigWGK+hdrQIuEbEybFnZmXDJ1PuS1ku3ITsg3
R2ORHqkkwloLmuByAJs61NXgqw+3D+/FD4fjUUGd4knnDJLrNvIZjGHy3C6Yt1pA/Ssqt1hoWCUw
TekQZiKiUZMPbOvP51Af1KbfoVo5dKwvSPWdrzfHBNn1418XDCvPuaK/YVg7W7CKzlqsob2c4qXi
rxu0qIDAFZe7l4RUrWCzfFXUkdzq9P+H4jZaDPBxUYbUiysg9p/+hFNbAYO/aCnyqwSaKfulaByl
8GXihO8RDnb2IuOQG7Mq74LSslmaOzz/5B+rvXvKKJ/IIc25Ugqf/B+aLf2205rZHx+42pniFyZ2
JcLh9cRuJL+wsmhaQG5be8tA2CFTfQ46Qc749jrOGHeJ0iKiGCTZ5RcSPtXH3lqd6qj+wnUg7K3f
bYpIo7EDTIbEBJin5toBoIjsl7DggvJbOvLF6l+DNUsGb6hxPgMczmJ00qqNXwg/xPzRecZKKa2F
68X6LHleEXRvJnQLe78k0HG54uDO3iswYebePvwof1zMlRh+d4Bev21IsTimn841HsstCj7G+4He
Jb6nlm5OZRp5XcuJUyhXiV8srA2YyPna5Za1uyBencRTdZQ4zl1imhsiq20V3GzYKVaEZPCzwQtc
9CHKdgzk0B6DxqxpdFRVI26nTI6aqxwkFG+4nJ978bEEhol7ROH9yv82Xlst+uPPgAs2qQfZOKLb
MoThvQg3Az9m2USfeXY+ZMn1E87CmqPZ8HsEwFGYNwgFgrUz6aLvpwys4Ifreqe6giTQoR3O8E9d
+0sDMDyX++4jElODMhHEpIPWTE/Ad4nXiBXIuPmaKTryXApRmPsCIMtuNnwEX+rVeL47Nn7mq2vz
C4KdUu0VclLtURLiiPrJ4sF/hr9aV3NBHerVCvpcfI8CiJfPe0mYg9bfwRf3PSnnvPvny8A9wbBM
9NwaACYB/RwKFSaYbOqeAJIIcTxqdxen1yYQ2Aczd0wdTHYiDGU/V3Le0M3tPkFiei2uC0wZRpYL
RTXRpYspZTlL2ZeyAhqZRgoAyKqYgIOwV9qhdvpbj2F5BwA5jkWmQdNIFkzsVvcoE4P7uvpI5QPA
GeQhVHnfYlkeolv0Bc2UDIQlFqAhiWBCoupzVNQ3Fky7pXImtat60rRwaSi0f4ywLqkPTKqWuIeC
867aGwIKos1r6UIAAT/SVqR3+OQDsvjtVU65MeZciXmYuhvUofFCc1o4GAeFDIAafpO45mLBpFrC
YmoPHSIqkv/HinGPv3y1zpCuKwPJjP42ZCgONnKRBPG54t7dT8ptXgMDuv1FKJYVc5kwH65D6bMO
Nwiw2sGMmww4iiV6C2reOs8mEOjTetxtA1BoZ4WDWjur6P9+7ZURmx5m22ieU7o4kwFt1uK/Hph0
3nJDHtpSpb36vwLKuApgejMMxr09F+oV8ea6hctEgCeMfp6VRK+Eh56WSZ/mLQwf1I+dDWCfl7Kj
pKamS/B9q+Bz8Y7p52kl/fluMWbJYZtntcIAe9poDIUOZDBLsa53j4k7oo0UA1nbGo5zmgpgTPfr
nC/5hS9u7CV5MJlZS5yBKUdWH78883s1EMRaueuTuws9a47lX0TouFglktvRD2M+eZJ0r0ycZG7z
zGvt7JAq0VOGmBhWfSZvMqh2snqaKL7J1JT3cbxJKEJc2tjrtt/fxtN1vUaZsI42trkcYoubcOsk
6Ot4B3mI/CLj/qA7qJea/o7SAzKditK1wrTzgLOO1CH1tWGgmi4zVL55ey7hcu7jL0sH5UJsyFwN
Bx/Kn0PFdtKgGiU5pwI5BL4ol/NhzO9JHbYDPvRTImgUGtOPf2Ca043lIZGI0W9h9ky0/uE0IX2n
M00Xey/1Xm+f5ymTLH5CIEkBTZGN71KZtNlWvNQ55GiS5J8bSQhasHsBX2TmB1OzHoqAxEbAE+91
09bZxoeQb+oDr8wIkfOtrJIW0P8nypOqWrJLnKMU1RWQNnYjDJttUe0TRmqmr3K24a3mpKz7j6lU
m877lcUJNWkaOIVdIvEBjysgUGdYQ/QxzlgBQpcZiEqrwLRxKhTCWQkQ6H1gFz5JHd7detDF8F6h
+g0Bgm3GjA1v5zUfMsr6j0wc65fRx5aw31B6KrZmFVROQY1Z1n7Y3qP+5CA8Dy8coZJOMlWeo/pU
WSqxIrjL7WlUoPab06OEjuMVmCufw7Y9oGNq6ltS6c+kbBpLRkGFY19TuDCEHGHGt3IL4G6uO0p2
BLBsqj5kW0bxRLet0dCGW1TmwfIZgR9jZOdU0Oj3Z69MZOwOZSPKbuY6BXBSoTDEoS/8w5J4hOqM
fbCirl8kdbaUH9OWaOquZ9PFBZj5EtoxR1mtPdh8RBZVUiO57PK8XXknKnxoRS/gvFuTqJwkPKEN
jm2eiMnEPzoqyZlY+efcAqO4yhAUtYbNbu23AxPLsvW+55z2ieCZ2oAuxjRlkixeUU3quXF5pGxI
LipBuMUY+ArIFB9aaZpwSRbcTPNrWU8qyUD5sFmTyWXrU8cxBS2lKzU6c4tovPqWFii/h3xWA6HD
+ofYzm62i0Vp6YV99vqHo1chDSbQse/I+s4JhSvRiCnI4dzG0vjccgyG8PSk/ISFtj27n35HsBMo
mxJJZ+4YMPZsZ6A+aQOZcW4ADcqtTShMdEDxRKoYzUXHHxpdzgUF6N9JnWApGGDl4gh+0itneiI9
54U1CM0OBBNs4aRo+xx726WKqnDuZ3kF/zcx2NbJJnJGGCDYQ0JgDfs65vouXEQgiVteA49hVKzr
NflwQyVUVtjjcF3tVUJxpAq0Op9+F9BIi+tmmtkGEj/80BsCapyx6bbckE8yFgQuiZOuW2BBHx5b
Hnn/QvNx+pCglki4TekZwAZFDFctQYVjIVPhyksQuXQ3vG1jZonS9HjDeKISKPsdKZ/pK3kKo3mV
AFTpfI+3Mimxpeo9VEzHBtXPDzDFU79TzbWBkqmzVhtjaYa1AKPPs8tvWTJ3TD8rSynm5kbjxkA+
f7Q4I2bha7/U9q/c183EH5OdO2qFcLQQMqXppv3rcDoxvSLpvwMNWcrNavoGnHt9H+qKLgeZ/yEG
x490N+yxnpo+j/qx7VXM8RPk4IycWJaRki3Hgr3zz38USXib3bbzlym+/LqObZUG/a1nUyDIq82n
oKmeLxGnLtuZaO+ZaAanwhY7PGi+iDTP/FOsFen6SqzBzlA9Tg8U0yXIQR7TJqi9NLnz3nd/V9qx
mH1LchiOobdGoX262hpWSikIyU0KrkiuLXFpaJDE3RDyQIDXj9hU+HaN0dNeLigBTZo+gPzCl3Bd
dWEJ4TsnNNgVl4S+bKFU1grkPY6YZ8rTwUINOhiSZjfqd/1GL1ur8/suztv75sgV0gMNpB6k54UO
V7kFpqSwrDMGJGfrysT9bQCuNLxGxX78P74lopggoM9ABrD3YCH62Ty8CoKr5BHHGwHO0i6Yr65Y
tt6aoTgBkzsQjMsyAsmKxVhtS0lMHGHrLNWVdVB2e86tSv1GwUXqiaIkeOGVeuNEu5ip9yeijGOZ
dd6B1/TkXs3Hl/ZN1OfcuXKL7+mw9orYKj9ms2k1DxmpG1vPjZVqpEni7yGLJHCixrOKOsfF8mVM
DTGtrA2RrnwV2Pbnii/URC/mOJme+buSro5Y/pr0cfLD5yPhR+eDblGp2SZN1nHP0rde/fiignLp
wdZepxnfZbucKgcanbzB+hjz90zIo8XdfrJsEIKooUbhP+CxI+5+cTrdjTW2Go1/ng9Qjrh9BFwB
R3injht4zsCBLhdZdVu+eG5ZI9W1/skyi5RuAjyb3d5nt2bp0hLyIs3m/pWsOsvPxOd6Lac6XtBK
Hpbgztornq7Ksp4yWF/LDPVGxzobkzSYXdeS849KhvcobdXofwlgRByKbFLxfM24Xmx8/Q2JV8jt
HQgqHrrbkv/u2Xj5qQaXSGT4ndMnxVMK0IpW4ISnjilhCF1gzjYv+50vnrqtyp+pgPSLXtDk13lr
DP3ZWhHEs6Zk4lMcKdL/tTsh71qGZk9j6n4uMah9Ce0BP0II06xJa/H2rCyt/CcV2qDrjjfJLj7H
j/qRk1PUHQ2gjCwkwbSzeqAesJy9OnmGtrNpayq2pXnG3zMq6l6kq39blj4lvLYbghxM4B7GFDkS
IOQtSm6cz+I6qViILX1MsKfCbpOkWrjvbyJKxHkHiDkbdhibDiHjICPX0CCWi6b24OXIje7LXpZX
JE9PWWWQWtBK3gUMg3kIlt01a0BX3UfXUYwIi2x+Q0B4JO2YcH3siEVHZinQfFAn/SmY1B/VpKlT
MdC9umPwzVZSwNTXcdkKhMeA45Ig+Lo14ZU9Ri35XBpaj1dbVaU2VWwrU3+o52ugTW7wbv4XnUfd
GxVCFf2YYP93Uuqlw16AX+iAnxwsbrwjvI3+2vsuaDQ8fMZoVb/V1xuDnbLUGAkwYq50/F8VDH8I
d05zZp0rz0qvF91zTONvS+aE35f+pR+zNKm5JVxmF69EPiFhVNBEeblqIBjzHituwAlHiRBaJsJ1
+gBGKcPO2DLs1Kc/LwUwOCSHwvohkOV3H8mCq16NeAkbscHZvOmE4m/8XoAYIv+0CUXNK51MZ196
M1F5JbsoIyxLZHx0VkZdbd1ltVT2fS9T9Uve/oPuaRukrAqOoBEJ09WwA6D+JOH7Lb7D9IARUo2W
xCFIelWJW7PF6B5Vve5JizI2gjPm+k9kcSh25iR6tODAth1ZiUnKlEjJ1Szsu4ZPCWD15slTbxTt
lMDkVif5MHP65IvHI26x39bbzWB9gxCINQzrrFVU+YKypHwvSk+awVC6pWImJepbn5ii5U77XR3q
m0z7uwEx8UvuPiId4FrDY4uIjHNA0tpnl7r3Xg7cc8gyU4am7ox8xwcAXSdHjUbcbY/0RDgKfvD3
XJAlRD597WhZAdCerjAM3hE71V8dJQHfsMR79ApBH/elCwUa6Vhxm8uLLJyuYC+CcL4pmSTLAdYG
GuVvVT0/OvCx0/R+mIlUWIgHpjZjdevu9ZzPS/JrQvvtmuRowDJtTqlfI8juzavcDRA3TYNrWjw0
/SE/STGT9+K0eMg5mfBKzL4CKgKN6FxFq/b00CvsIqyPC9mJUckYxVaUQchyOY6XSsSW5wMUHsqC
OE7Xfun4PgpYBeRgH521cNnEuJAHb5OAa7mVKGMLKpZPZth0s4HELMCmK6MVCXlPybBkNW7rVI5i
5RZgKzYIu7yxElLZ7NtidpP61Gqu149bJVoDTz67eR/Rw826AH0rrZfgFe7hP3nD9aet3Zr9k/TQ
OKSUhGv2P2mtIx81phRRcOjVpekK3J4a+sEOXSKzZIEgP3jWpVKFbG0a0gra8VuRT2CsEi3NjYgW
kxnJeA5EF6OKofSFmmKXelsYjwgRBTKILTGLbFi84pk1Xb65JWOktafW63y8BIqMlfc2HB5ETodX
QqilOws1h07YSIYQ0lsIDCdl2idIQuyqmouxJaqkVtI/QNm54ihGN4bzwyCVo9016C0QPfSmjK5Y
rcvHZniwsNjYuxKPOKeWYCU3B3nm0uLsnGHHE3vzzeQt14ADG5VfuyZ0831OKfOkuAWcddpE338a
QvhnJnRxWFvaORUzMXlSMWyL77HwTMdBA/AbF9R+qudS0bM62aDvdCUn70hbq/MAyocx+67HPbLs
PZv9isFekPVsPSN+vnnOesJ/wVtW+iUX6vFM1qcShtchLkGSqELX4+2kkZX3iug8StrlwLBbWZw9
ggA5t0VOBvDvtU3wfGwhBFYahjuy4LwI9JZODMJUdvIRODeQbNlC3T6HqcFEhWEG20pRk3/c32ma
Yj7I/BW+GGLtZfbeg+Gx6IP85j/pqKVV5x0d2RIwdb8+4SuCm4D+NF5tdGkBpIkXyxpdd5ijL829
e+ei+6HTdsGQkskUvX0TL4NE7dorTWH3aQnimR2eGEzwsJcYuwaDhdY+P8Z8PttrQ/p2BnAsVc3z
GUgJsURNSUt8BGDpwKOGPET8oU5Xef6BWspSQ7s6rh3Bs+jVu5v4yA3eP8pbb7NXG7FuvxdBpYce
RVl/jxwiHPYoVk4DF7KnG5M2OxAeWTcU0z4cQmYuntgRUVKO3ZfPiyIGwTcJqyqfr2nay02b6cR1
Y/oTPHSKG5J4rIvTzXj/Lft5vRBB5JxjAjjyuhA1olYXblx1ePUg5NZgJHKyXU8nzkEKtvsmkrq4
wdjNw88M6PkL866xtL1Ij92mbMxLgEA6GCROl5DbdXnIRnVM0Poy7nfEnR+tqKx7IK6QoJUCJk2J
UaBQiz1tiLZaQhDVywY7e9VjrdZzHhhUG7tkVVhamaiWByUGKhIk9Ju9I45XZVv1HNNhpj95tYhc
hrWbOlAGfOJjZzESE0CTg4EQHULvhoqPL45b3HSFUngRJjNgnYmUggLmS3DXLFh/Rpc81hYg5z2t
XDR88qhnnyWYusbW8s3m87e5dK9MKkrGJRAK1R7//OHFDVghkUWcjuLPiUxQydRMEL2x5fskaovW
6NFk/vnGhKv7ZyqGymrIcpvj8bGmB0MfGIPavzjlQlqttq5ii6QD5sEfiRiCyfR3A3s8PM6DpypB
r1PeSQ7SmQW/S73mO7FlOFO0gQ1GqpUx2pYLTGn1d0/cMysPcxozaC7E9LNr6zEAURbyC1kqJNMB
QY6glxlSvG5d9FyMhB/aZvmiUYxDKjn63ZOAgANBB/37segENuFnP7hZ4bZE7J0qVB8uhqJDZ9H6
/Dd8esls5Bt9T2eLJ1/rhkLo5okH1VkSkKN0nM8XW6X65JLyvXGfTnLF/VPHN/YPoXWMzOpI4Btf
CtzLJ416O4c21GrgW9VorIRHPkfWKVh7rTe8wd/cS4eJBCnF9jvt18ibkihpyjaQuZp+3FyOy2jd
M5AbMIkQHdaVTRyPiJBW2piaYjBoyOoF+l/gJfoY7+c9CtqRhC5U1NDpJkwqr39zXNr28eC9/EWN
2yqWBnfwywpJHpAFIJ2n4NY4NCnXv1TNzSwa5uD0x5uQi7IprzxxJ1MYn3cYZLiQR67G5zXxrfN1
BFetjSSWPW5ShNfhnYDivtQaoYHtWV7b16axKrzfRSyRtdLS7C5AKmBILO2195KAnvSlRkS8TJ16
tkIPfg03ZLhnWcqO8aCOMl3xe8m2vE46i4AfY8g0M/tOeuWCAQLFnXKAGXX/8SJkqfA1eJ2nM3di
A8J9usPgkAAM2hinhQD6+iNiEAh2yv9FXhn6mr0NfRYyxGlBeC15O94Bf0xsTXurTx7Mxo8/KeCf
fu6E4EeCm4+omcljs1MbfaiFrIVqem9veloL5IV4mnnbClygmsxw0sIU8aCyk7CySAibbYlYWU10
4EOUi2JQQ8zIQHb+JgHfLfu393SbU6xgD+VdoLhIH6eEjC9kk8Pf2nHtvbkxLaL5g5lK2MXIvQxg
fYx6OtbczaL9hzHFrp3kfL0ZLxh3kk7NtywSYhAPMZxQs0KUneF7kVw6xKuG8jP1UrSw1iNn8+j5
18yKuDEJ7lFChAhGriZRUfO3ey9heiQrYt003iTsJzRZsH4YvUMci/lWR81tgsV4kmeRK79Iv/H1
zJML44R/zAppApRqL9goVgyG7lhKyspIVqyF5QETfiPzMvcSU9KjdiFgZ/Zofv+UupwxpTKwBllK
m0QErtLAgiv5eWxEAvKwDfvThB7aBZ4TuqMJS/64Sb9LcckHdYR/r4rjdadinqhT24ulDdtHNrGX
pRJUf2tZcVJ3Y5SPTOVW5TOwpwidwNVOPr7KEWslQ/Y1g69FDnJ9FMSk1hYl351XL9mKiRj0Nwi4
xBeUzURg73YBshKFrd16y7SS6gQF9De8yJGwZh6qrmMFUZr5CFBxZnBSvbrAtpW2+4wPB1oC1BWo
VaHsvta6QAt6BEFO2sT1CSiE8m8fo3VpkN81qt0KKDIbymSeSEm19yMVXbMDmOvqHlhNizFznTFh
xCwQie6on8phzcf5Wqo44WWeR+Pln+gcm3uBjAy8xSKNnhAOEiAXAwroeUvNRnYm//r3uZmE+xHI
rmNBNELM4bU7nlhWRmU0o8DBwYixAumEjhRCIDAQm0lHbNIoYt6defMcv3OrFTco71n/Mjf9qMbU
Kwx41ouL71qUydoNE24VDb4Kpfuc+A050+VRIrUT1QKHXrOeyUtcH+ZgK6G5ztgX7rd37uTbpd1S
ovlFw9ytz/cHX9Uz3INoxNcIU/218TfRnBY63cnRsj6MCuc4s+ujNcCTpxAVBbwkyfQCpYDyR+P/
eLqnq8WRY5B77hwVg4hwjzL6zsUH4/WAJ3XWFUJnLcAl0BQAmu1oTILldBsngfnajGzvwfqbzAso
F9UC1qRefJrDkmODiT3TigEtHWJsoEvlQb2xhlWEtxH0VyctZK+s1iuPHkg3ldkSIJdcnDK0mYk+
ZBx1jbksgyxCBeSZglqVbrnF4IGg7esL68uqddrZCp0xTBmCKOdwS7TItWUnSMnXEBYwsNoCm+yU
j3qLJMzWzshWZ5rUSaAndLQJ8lVxSSG7/fekL3+rTxavwa2aQnHiErEa8kuUQQjzaQFNtrZck/vW
CiNHa9pucnr29RStDStRrsH/7YIqEQ9sjYR03xrbWQT75P0Zz5FsypyiuTN7NtkEy69nrdkxPf+i
mbpgUfD1mySAyVrUp/IuO7Wm6Y3SWAM8OhyzF16k+ozeOSS0pBxxLKbgPwm4iycwADR8mmuww82n
buYPgVWyxm9pJ4IBBn2EAKDW1D0VRGQGEEU7jTQOp6vdyRnaSeRedSqRX+vrl7mF35J5+mQDwWM9
K9aAcke7ejUsXVBwzryBdIn8PitVyO4Y6lA2Ff6Vr9j7v+OhKywb4F3lbNlpI2TtGHRaadGIgY9i
GQHZ/wMg7r2tAiztRkhqY25jVcrbazW36zxNo8x74CybTpniFGZBKO42xeQjKk5+SGxnEQgWP7Dj
ZJe3eL7w7Jtyx9C5R1ACzpqVq6I71E1sNrCvdgrOIK0N4Fyr9u6SckzFktE6i5eOTB/+XJNwqdbo
ddQwDPVoHvaoZw2vrOdOjkQRM0m6cWCy5a08CQym+G1fNT2ft6UF4veyKV7JpNv9wQbtAsr09225
BnUSxzC2N+Lz9+s7hyfPtcOPUSFg9QnBSF3uWbIB9xENHC/A38s9bThpED6zeOASpLhvAWuUpk8/
6xBFgqOb4DZF6hZc+SaU4RzPlckCF/1DAU6AvtuxjSap7zoT2tdFJoJ6K0JR1vKKY9yC9t54r5M4
sVXF0dDWn0wJKU4yIrGFMRyihD33MZb683AHILlEIZq8sO5TRTV5TO4cJ82955D1klxFNuihRGcc
CsmbX2kJOpztnV/A/mqPN33sxcsdB3Du9b5/NY9b706tTK50OeeY+l1yh4OV6H0nVPWTKnzDdH6T
NDVBIsD7Htw01VCnIgzuuXRWNFakV80kmy8Cpp5cEhUwJzvc4iHQiQ6d1jwN11fvXmp9mKUxbFop
RwP2L9po7iUWmsLmCW4vgrJ5Y13APifGAZVQLaihu0b+XCLbkdS2urDYy3elDk43vHMlL+mTwxhC
AnELmM9sw2NKT1FZ35x3qekhE33nBMwqjtXsbPkOqrdcGs81V3hRNHxVRGFJjImNU4OIZ3e1NNPP
Ta+vanlE3dapTggrRW4VdxgA3ef6dAsBYmWFWmtER/KqkZlnWC73jZQdXsTQbPZwXpdXJB3iFceh
hcVuhbjkIpE05PzvEahScHQWBTcCEFGbvSSyKgAVGrmiQdRt8Fq+w25rxVJRfZx74DyP+NJ6JTtL
+hDxXunCymByaj8vGX62/u6YTxYyUyBn9A6bZX78a/YE6UQDo9wOaBbxwW7sF67dAqa5SjFFetvX
mnNemoJiBNoqWp0FlIxEJw43PfTQr23sJ4Tnr2u27kX1W4t6HIN00Otgta2DA58qdlxHQJtHQbI6
nZAQ6PO+qOB533yw7UH7ba4CAFvTfpofJJljAZ8/RSI9EhxT+w3RhVlddZ+Kc6ut229KNIxQbSUj
ASl+PszmkFv25d1arTCMXcwPnVeTKZ9AnNkYWKe99qJdA5a0rFc8Psf6qOsJtPvAOheNdVYX/nQ2
HUxbPh4IiY24qrFeI/3Hp02fgKDBgM6X0lEGrSb4UucOE25L1lNA4MBt55d/ayCMHPHh7eSluur9
asQHiXcgMVFP+fwhYpz+iqyZQdY/ICWorW59gbaNC0S/p6sZ46jr1B4GC7W/R8CYyf1IE5lEBWQ0
E34F+XhJUnqOgZ/LRLFsKUxQ1IHzVFii3844c55EEYrVrg3XzqLQNlG2wZ/BQe8LqXL8aO4sv7mK
OjSakikOk4jPIlD+tRAVtt7f3gpPxV2VMHNwD5oM4XamcTMNdDuLQcT/rvwt8OKUPn5mzYrjOEL/
7YQ7JHXAAcMetqgWR8dGhWb6JeVTRcbcGncmO6x+mcpQJGuHl8UvogwUjzMB1oqJgHodzUSZkrf4
PbiYtdiCEiR1pnLNOL9scgQNHKO4TRueBDnjcSpZxVwoCO+LBxknIumA6hx0fzLn6addzlm4fmgv
JgdG1IMn+brrkaZhzAujcq+IpWdJm2GdM918iz12UcbWrsX5YrmzifNTHijeOFEkWA/OU/gok6wL
Lmw6ZM0F/T1iH6J1hroSOIQFyQZEv5Homm4zS/UAVBsZW59zFWswQEbfJ3M/3Deb9SomoiBgQOdP
tSGgu/o4d7hgV/bpt6ODJ8pn3Ie8aWM36Bd0xYVjf6OEQ+cyTIw+wFeaSLRgHvEzsxmLhYaMaasr
b0GMnbiWnjv6vcTIFuXrLxbiZg6OzcfQSRbTJw8YAIKhgC3DfyYpaZ1vKpP1Ax8WDfuHxcWBdCHG
ZsIb9UpBG+6rsy3E9cCZLM07mM2lJxIp+IxOkCh9nba9yQjDQoRrDoWTUE9uVShrfkvxXb4ubcoO
U0AsF37EV6ZpLh1d2m2vRuGNq+WSs/RZd2C+ItM36gsk7U7NXZ4zIjAfyooxnrbJO62uzTLn+fas
K3BVRtyzn+te/i5O1m0+oKU6jSoa0Z/R6EX77iQO8FdE43OAtRxtTyAWe9lg80YTwiCxTyqxKj5x
8wMkB1cd3DuXfHSrYo4AxO16gI/LGiOEKMF6BLDTwCZGpal11uIraeJOfjB8qtD8tfuDxR9QwP7T
JmrMR25H+0eyjb6Io0ibpD24Ub19cNVINaJBOAf5AsLjLnltVUCMyIgPmdP70o3QIevF7SG3RWxu
x3BtfgsxB2YzYpYZICyiabqld5AMtV2BegPLmBXp/vNz9gwKsDhVxm5ewW6niCt6SfXK1ZHb6faG
xbEMPgqFOv8wZhiyTZStzGNe2QgTS3hrWfQ5ImK9/zIC3R2mUrtey6XLHp8NwFsRw2LFniEWIZ1+
w1Auvxso8C06SnVU8xRRKGG+OIdPSS5J6DtQltVXttR9Kga7X5nEOM6KIg7n2L60T1IJi1ebMed8
fB4x8LpjZcB5RI7moAjoxB5LRjKYd3VrwztludpBF4+ZJmb0jE2BIXx7L/oYApAtDqJ2BYmqfXqW
qI+b0kXZaye022jWJQo597JHrJRrcrBUyXBoEvVRfuul7+38pjRkeXGbTWhod450n1VUw8c9Gf/d
thIkBERT4t0fdnI+8YKXkBnz6gH8Tpb8qxGnMB9CrMta4h5c9H8c0kgjn5mt4wZmVu9VuDq46WQD
sIWy55cxlX40AKtd9rmQ7wt6ljBKIj9cdlTeCA4SQnJPzX8Cctm9fOWcgLfscG041fAzf+khMmCh
kF/XwQXF5BhSHEsZRyBEB57M2oaFO/AKDwHyNG4h8Mg8p903fYSdIHqN9J5LKvpzLj0wWlH6atP6
r/7wB4jQm1ksMTTeLVdQJGHfSlnMRb6JyjQqVPTglCv84YewoDVHoPZwS+7ztcLB+LYeOxjFFLU7
7l0NUP6ojtl2Ye47WAlJrfsLeM+VMTZ1qVXZS6sSrN9qGaACzoc2ZUmWUOBpxF2sDcBt/WXwdppm
J4+N9BHuOViI9QDLtW/zIda/2fEjad3e3XwA0hjtrVzUX6SvD0j5hP+8Ehcs9g8dVy5GGQc3RcqZ
wblUfVqj/k+TAYgBikU35Cmh/qLdKgeRs825L07HIKuAJRAtXaGQ2NXJddNxy4pcqLfPfaXrfZjJ
d1md2psZaGzmthkUxqaSWdJXC78FYo7HBi+exlUM4J29dtHauWRJnMHCQr9VyWh77mRhIdJznEhZ
DXv0ATxlCvS5ro+Yw7Z1pCMFdm/n0w0fvawS/XHjZUJlp9f88PF1vTyh9/6VYoV5L1+ryj3xYD0+
+us//3DjrMIO2PdamaInQHvkKkFZFaE0/GYLrys2MmwqfrGaS/j2K5kkUBBrGMu4M3Wdwxpj4ukD
YT/XZUrg4mxe12Z4vwcLeXPR/Oj3NDL2qZtEFscpztGlnuzmw3XmZmEkboGPB1ashyYIenAUynmE
KFUPZyF7e3RcCLn0ZE8YpKplSWqaOAdVjpquCWDKJKucYJDmVqh5nWauMRFm39euYEzI08ArjV42
4moFDPaoHciv8jYLOJeJrSKfp16nIZjOHe//IrpC2vnWipuGCbhpAFpuOItEzw+QKvMEXJ3JGtXo
ceo5IuLocZa5I/qy2J1oZBGA1EHVZG5/RaZLM3JIP3BOaPSrZvBg1oG0bfcTp7dpXwrfhI3A5qdE
ldQxmht34Jt3v2aREqN3w+yYce4gmhAt7DpwDT9CMk6+D0vJBgQATpbxxRgSx0FgqxUCMXoxyBrT
wXefHty7gMWf4wvppY3pGDDEnDfVfvet89VZGyQuf31MYhG56bWLarERpPZKBZ8W2M1XT+brqmjZ
YecP3Sj5hYamtqTwEgvHf1nLmqWExx68DsnRqxxuXSSFVbkawuC/Gp2W5zqpDtp+i6izNP3zK6VP
4MzhO2joiW2PY11qDm33tAlnZCTNnChZGilO2uxitO/kJIbLUsC4RisHpwz37uKALDEVSXWqzZ/T
9EFUZsHdbgMvEmhx3e8iT6YS45JHCm9WqawWo+ZThpjcAqXCN162MkNE8G4oMxuTPtmIzYCVInmC
18ZyL8C/IpeHBVS9zyYVwfBWNuenKlaiBDY5xOM2hC1Wm/1xBv9zbE3b0rKRXAMTrNzKfKKIpSVy
LIQkRfcrOfDg02H28AgQRaJ7jAyZ0gHANu8IgsmA4vBUNAyQvFUhnOD3/gYHGP1vmYYltsCEVWEz
nT9e8OFrmMpsImlBSt7ODy44CBopS8j3xL6U4tVPnl40ICcJq9QySosYHGXiwZkyJgVmCChVdUyx
QhLO46bkKhB/oU/xLF3vEKHGZXzXhRcG47GpMmB1aImTtfAkhOW7Oz6UT2qTy189n1wBFXXvMeE7
A9HpPjSiAj4hFGCIEcHd9PtmSw/1LITie6sBb/PAPDEshevq4oHEBamA0Y0Ym/zGcMl+5pZkphXW
v14k9ARiPgPu1wdKYoRZnMHyLuoE0zqlEBx3lOYR3BYmvq1B1mYqK7dJ6zfUy7jcfhmowPhRt6FS
j4fl282NmC/LTUHJG268a47q71/yHSdMrVn+/pBtSty4qxLLjLme4ZsOPk4iA+a9Iu3chsUbCaVH
Ns6MVi+FPtWch4TJSmHtT/7gaRYcxOY4DvSVjfmbGb8pmQOL6WEaykNJ20eM9i4p9y+Y3fdb0ccr
v+ZyOAHSDhTAwrzqaJNk2wrc9rrfC6YM0izXTKnIGvYVkeVIs3TsPdO98mETXN3VrIzhQKC4ogPd
ugfnZdyb7EG2LyMgUteiytkX4AcKAg0Vv77I9Ji04rAraYEvoprPYVjGAN2QXtlcIYHSVnFNtij7
F3NQIw+ZXa/oX/0S+9hX+bII2viFNjDfSJrFXIUIP75XI1Ztjs9N9c0sRtNPuFqi1ePPiHOO+iTI
9MxCau898DmZIJAFGkG/j4A4gQL83Y/sdbB78hWTpJCTER+qDhSiePHyCOHVlSMmf+hlxzKSW//K
gZShKOYmqDQuYQlGYooVhEqaG3dHMcv+pNJwTNVB9+fzV9QIQVttC6nsnQ591kq/4KBE/xxwHKOf
qiRTXqn7o5Lz+4oCTeSyOXwdKKzbO6Krhgi7OhmMQ4Lv+qqjUK45Y5sU06IlS8BjUoJhXnAnqdqb
Ipdp4RvBmz2IFV0ML0zjaac2nCmOvh88LQQF7IHJkY1YaL8K0pyKMMB8FLcbk0KTM9fVsObpUevR
fkQZOiV4UKO+aPTcFV7a9QkwE6yR5u3VhwwVkSaVg0C14r4NE0/HuKqTYhO5ftHb4alXZZy6Mx09
z+kUeVV6GHya+rYmA2695trNEsCb6FWHKx0ENhwYikERXNBJCTDVj8sszSwq4HpYAwELVRnRLlJQ
fUBGLl38PUEHvh+l2NlK5glrkJ6iYDR8qUH4a4i8rFiHPdC4LVrNpXrCJgVholSxOgggLJMeQ0u7
DNrU2/yAKgarNAbp3dWszuE49c92wz0JbyjjaMZ8oM/J51pTHHAOgQ2G1wtr5kP92TKK2CuAfxWU
vulq/k9QqNacGUITZJei0spVK3kGb0ARN5U/5LMnN8AIvEj6KhQxMPkl/LFF38/NcWZyJ8GO2kLo
EUeFBP6NN1Q/qoPtHBP2z0rUwrBRseUCOFR0AHegxCICh7XVGOL9EiR6/mxocbLrIrhrra2l1J9G
iOeOtFhVGvtQWjoPk4olzizHv962xa8urj1rvwJuE+EDBxVOQUB0oF6hfVKGgEk7LrraTr9Y5LAf
eK8lVGboT6R4GLvoOB+dnvCYdOwsdGtOz6Qu35jqIfbgGggAKO28Ezs0aoMv8CvYcOXQb4XxSW+W
xH1kP2wA0IAe0lLbW8WFcHKqtVnZE7gjCn2BUi1Gg6TV5bR/E6BSHHXxAGN7ztcZxYpBEmfFyQgh
XJm5es/5Dx+3PkP1eyz2XnTVge5ksAEi8n9W4CIhSOpKqKrbWkHF7yOFMaU5ej06gPCJi1f97Og5
cMSgf4JrEelH0GqOaEoe0/k4wQ51s2sx3JvrSKeJkHNMtAdOQtQILJPO2TEZrxvy5XMLnxVAjLOx
763lCsLHp0PFxhdYvL1/Pos7qPnk2HqxNboOgKUdfTHG/KRrKHc/zJFOt9Ap7C/a+i608wQ482y6
7CR9NEM1vR8rGj9lqMGgA1J82HBrcWNPgS6ZS4KaQBSxMsQA2Cpim/KC7RJhxibw6+IsGNfdZfWr
gCoULf+QKABwG1wDWuc7BqQgu6okVuU9FxfSo4EQ/buEVZ9C1YkgiZnNyzEl4FzwvUn83HFknOok
kX0xHBSJzUFR6rFyltTeYAQ+7eIpWez3MiAOxsyBSfpSIGIc01dmA1OJEnHJlhbpYNOMxHUoj6Ct
NJjgCvjG3tU4G08K043RKf354E3YPCUjSQXFnsiWVT+4Ofs5qKhdgNdu39VtKNtlaMFNDxRMDGrr
vWOUyplySPFAXpEHJyLuy9Fd6QQFFh1pQq0xoirPyRw3mDcjuxCA8FhKoiWHp/ex38fyCvuP7gPZ
dmwy+NEK41zFDGQWc3NDotlq7xnUEVYHJvunFMHdoLU5Y/dUbb4rf+Lrhd6yFgLZYKdmxnfXXhH+
i17PdHyySFtVq9eMldmb6/SYBszjRZHuDUCKNIPhjRPi9p4BnS4fwMbd76OLh73t1mYJeICEpV4k
/pjqtMdqqF9Phbt2Y+ZZPq87HEz2t7L20vLLdfpjHlRmoCyPJYuXyLGRL/DdO85pxgRJSbJClolC
4KdZuULbQsUrONapYlaHsXQSIEKm+BKF0co5badoNmOZ2AgFFR9ZflollUFa2rrYXzPDT9UkPxRJ
HJEI6cyAM17BYB5WDQHl2OCCEJDeoxbo22yQ1EDmM9ogkvoNmwn3/YbYotlhhs/16ul8imdHZGs2
1BSyN9o++aSUE3NxKUkwP091Tuns3zzkEx3dXS6dlubccsKpw7PYKdaluCAlyIk6rrN+Z9QS4x1/
FV+orZk55TaFRzL39zqgNmUQdGEyq69CtE5mww3aFl2H9xJSgYMKiJFmF0lLYkVd6wuc496LgIHk
DY3bmpz+0acPRXrIG/mOX32V3xORWI5YNXrRQowSFPBHPvjsZTsI4PlcLSQw4D+UMZwXbOMvHd7o
CzWgz1P7iS5Fb4XPjeq7TNfx110Daw8/rFOfRCT2df3vmCzAbisvnE/WsGQBJlnv67fm8dN+MzpT
YD9vyh5WrOF9/diSsd7/LLZXXLuxXF6wF7K2T8v62+whWxF+Ra7AkPLRyvks3x8DxApW9g0TFrUK
DJTBKS1EJqoWCmLVzA1fs/ricsWfxlpx2ELVpE5OIUuFsqb29L1pk434Uj+/mMpNejMi19qYRfqR
PJf3u0lmpwIwhuoxpVPNsPdKdC0brR8gdPznZatWXr4XAZ6fCDAzGohKUxYgSN9yWFx8OI6Pe49Y
TAk8cdaQeXh+JLxbCAw1zvEhrlshKfD7A66SWnngzk4TkA31CrBJNKjxn7S1JjIVKi7DmmYUb77B
hq+iscvNJzele1+TbC2BNIGQoOdL52Wsb8Gq8ok/VxebXYyy7Sll2mVv2aKzZs6a7u2rXEnH0wWy
dJsYARK2VApMsJF+IpsFPJwYjcsu/t1BU5RginbI5rapLgBHDKeM2v5tKi7jXHPoMC+uALif0tc/
aP4mS2WKAlZnPhOLyorz1tb/tXxCa/gRhXekiNvKCbFs3mkWPhXeCmcF6Bpe2CCQSxc0L5+Io/PD
jc8WpB6ITKr9NuLvsn93PBLuqfjabZ3ZbhqbL78/mBEaK3j3dOMwi5QO0pm4ZTyic4Qjc4wWwPU6
d2SSOnGS8sVzT7Ast8dsdC2IsypINtbZRNYEX2ppDOlJsF5oFyjVlv4gNfxjyavGc2dM5zjLCPO1
4BqHbC4ub0KcCS4ZJkDbmGog6jxLj8ot/jNKrDRAxWqx5B9GngAvI4Zj2Ff8J69Ln79PYuanBmTX
Wnjif7B1qMEpLgxOcGGrcLL55WgUy7MHVKRYLUS3P8Cv+PsYB9M/JEpbPBIkJoZBvsPe+ayuM3AB
NNEJVTj26vNCOpEZtCJjWL/Vx3wiHjK3gMEWeGK4+CurjtioOpG3lHWIPylQXzy5p0zDx5GCBw7E
jAfjRj5VMkMwEBCQ19svWqvpemkEd14M9O0AQOiWklIuKF1btFF/SkZ9xc1lwEzy9vHTDsSrs7dJ
9BICRMuLdljYho6qSAwvtu2aZ3cCst81DPzQu1boZbQ7kFqzRiMvOs35x8YgcXCyKfeBqcDDf2aC
6Q+1ukhIVR75JxHFIdP+LKPY/vgTaw/HtaKQWU7Z53zxydsVSyQU6TID0nYzj5xhgYuHlJZONyO+
jkIDr9C5hc0WbGV6Dj973FRwzh95sB8NG0bkBR8fCUfxjlrwEJBo6ZlYfpE3pFB9dZh7LeWsibbv
DDiIafsrkDXzCrdCQ675AtdObZAWm9S0DyjG4eIBOJO+SuEEK///1yhNUT1XRZZkDRm9X1J4Z1tm
EyDuEP3E56eW39XtYT3CHYeF+Z5SPTNIAv5zEIGoWhNJBrwQEcOjAgLNxz9Ic8FIPhjMXvcCijNW
gCqvIdcQF7puRQc4y3EfghgWrVox/kCLpb3Pk3kyatucWrVFChbTyftBrL2zIKVZF+/ikYNqIHZE
GQHvl+wJ8lWc/jYoMbvp75xMQePCrIuNjf8eGKCAbdS/dHV0sYrTXYVMCFiegQ3F4Fc1BWbU6TMA
CJkvpKrxU2E11mP7nlvEg50prbji5gFe0IcaApYMlygQpXWYg6MuV50WY0k3Ax1nFMyqu4Cm7SZj
XqQCl3YKoL0sTxemh20KKMCGYuD1y1dZrwFvl8y6POlzUYT3YRHlnFrzJK+r+TWP1jFVHkuCjqsp
80qvo6/ucx9K88PKaDQHmYHk3P/9qOFqqDnCb82ITQBLTKrkraKtLNlmSpJbnmN1Qg1WiNnxTHtc
vFh/tQFq0XAhkJeL5AMo/QA7SJhU2xq257u+234YkBW98ReJgQXri16qMhd7aRsvQZD4J2Ot7NT8
zjRl1x7Ic7Uy/z3wkc8PPWQkZo6+jB4jriegj2Mc++iMuTBo3M54mG8JdkVzFuVgyM7CPhFckKeG
rQR9Lt3ixnUnLq2h4Wyyq2jpcRRgdVIeWZ3ts0fuQMmYZ/pQHYBmFEUPzFCuHDFoyBQ3wc4JQWBZ
YMWSvCYqrrTuBn4aCtIcA/ZZ4lvft9XhvIiFNatQEa9ztjwLoPtdfN/YowLmwmz0761JCyOsA0nW
dbqe4trUcZkQR4MprOMEdKf33gOxOmCnApWEpFk03DHhXnRRRKtbVUbgzn7dQ2UeIfDegC/nqwf+
o68PnMIrx+BZf/sxS7r7WqBNEIxuoVUgfGf7Dq8YsW3lDMGVOrLuJbuKH+LHpY1qZHTACt6tYS5E
2JtlTHFAs93mVYu1pvgSr8ANB0yKF2theaLKiDsfVY51jIv6qpr6iRaGXGZvLNSBfOor2HkmHaeM
VINWomqh5HT7Mg5foiXAefVVqCdEfvzRLhVOCveAKFQsBAvcIK0VXTfl/6PtCq4b9Q74DJuc82+B
g+RzX4Ss9r1DuiAgQdso9MPl/5R+saurP999qQBcTZb6gB21MlAqo0hsXZ2P2pmPY6kyjKjZvMLn
AiYFClK6yqmpCFRVScPijLKA09r8CEmWL9TK7r3Zb6y/u1cahTVMKZqeRs+DEyxXg5XkxVO+x4/+
x+dm79fI3fjC22k7rfGdqFLBtMi+RWWRjXygDy5FJL78UIwVQJHtHjxMFrDDD7mUIJQy5Ry4/zob
CU/SF7fO4Zr8AVFcZe4YyXYKdtBTgIF7qEDAN5kLt2fUzqzUWOMYxVnw6T0Zv2yWxl2N9U/5V2Yl
iY6hZ+kCZj/7Nud3Nsv6AHx0FxnSjKAPAV6P6Noso0weo6eRS8v5zt2WlGqd1sG+8ujTXxbJk56l
o289f3qNjs0/ACfU4+3Jois2CtGqB5ywIxYH4jvkZnp+ICXTf/vVvxN91wXmneI21pNhyU8KNc1g
8WbmpPTNkHlU3wWah8C68rqoqH3vRoBDSjfvldAvl+cnDKYSViVd+29tGRY0HqvsPyowGN2KTJ0A
LNwM/oaq0PhH69rok1qTJW0/sSZ1X6IgFLI01K18pjXAXbofi0i8MJxQFmZcvbCEk1LkJoqpvjBR
QZhMf9Qln8xcEEslSKf5aU4cZXRTTM9WxblXAjiZacWYYZ2vwwunidqXV5b/qLiEFPTKGeQmS641
9Tuk+Ak4foLxQ5eS278EhcEuqKdnsfGMAv2jBp29x6mmvzQMMrVv3chXw+/lgLtPfXGmHJDkh1uG
0M+Kao1MaTWb80Ag4vZObarEXVGmVRN3nBIkds/PsQmK4aCfi1BJ+SS5s85doWXLT04CRD8paejN
7cU54MLTeMlwdFxEcY/6tLJk5WydzjTfHAEAr06E3fjzDRdHUkMADDnXRj/X79ylvudzCh6a/jGp
SSfLsoxszxwlgLcmox7BviHiSghfAQQqpG7N7Ujuu2NM/eEvYJs4UHsozHrm9AqZTxCur6JLninR
5LyjobdMdiOIk6Dnb2fz7PCwXYVXlSoRWxPGs4RdGFQUqMiZ9/Zpdymu7/gq/UAfO3H60If4HRJE
QwNxlyoV7HRJFRftEj0WqrgKX7PHdxVVrhMgCdrgsV5oJjl0k5BEgjWP5cYz+5Cc2vAy1tE3Mkc/
usAE0DUW5Mk9Ie8T91PChYUsRq8ieGnU92FPlaDye68QDOIC5iZO90t/qS2YMLD7ceF+4KBRxMdO
jURseYGhz06AMtEBMflZyPxbzM4pV+OyNwNgxCQu4aF0Da+Dj8K4WAbG8CzVeoUunAghZ+/vOXOI
DPt7bSXhp+Wic5PwHedpeHsJFxmFM95S3pp/CBfXRe5+/S9+XVnp4MkKym6+GCavOMBoTHxniaT2
slE92emHHk8IhC6xIUQF82Fr6t4aNLWIsYKUGcPbnHZ/uPNwXOvyZpIjp26nYIxE6x7GN8vuUN3w
kRxMnt9tLSm3maZY6PcsP4laZivHNwRhm/rSD+CW+lPYuzDdHaxXkK5+CkRUXsWUSDmbDUXMl+0/
OoXCRkICO9Aw0Ey72dpKaK5d5jhzDuZ/mbXC57iE/CaJJbwdn7YTJks009JPKLdBadjRstFLEsA4
8kyCPfbt0m3ZnTO2Gr+GlUZzqbxJK/SvlxYQ9Rk7XtTVSV/swb12LpW0d+O9GgeS79t9LTsNCfez
EqamuxMuSRt1sUDMDJIRR5szvuGoS1xuGEQW23/eaIKU7E+9PgEWi3bZWW4+7ZCBknvHVr/pAY4l
ybB5Ur2MvU5BM3ENq9GKracJ5JxSkrdRqp+3gzV4uqMKoCt7lSDdtTOAr8WDMCm+rKITAoF2koxs
H8aO/DowShGG392GxCee/C+0NbzkltisTiozOGN81X+GYHQkPxZcYzeVUCYyRIjygs1IFI719FTo
1R2ktZuvNNCIKoqGbXVcwh8vsaM1t3rvbOgTIO8E6DqoRTpZrqvkjeuPdJQ0fZRtEAP+3ZHeZagQ
xh70f1LP/Y3paPt6haHmKENPao766hTc2skYBdGGAdmdnNW9V1pQ7PVK4zV/cOwA1F9Ox9RW+2S4
APkCvivBhbcWS/wbsdVdZYV1ixY2eTOPz2SZJJePC20BfkHCLs3pzRgtQ+VqVudhAk0QFSNsvaPm
AtwZbtyU35ihkSvuAe7H5680dtm1svTRHEjUH1oqh+0STvNCWdf6I+juidY9Hy5wgXrzIWAGS4Ex
Ki0EsG87jTPG++MxWZkmTfyaH3nXTi0xY4W3BrrSbqTEMl/A1YuLCQsMI3gDUuy0GpJsud5o+3Ss
vwgxQYPZ6rr1ty0qe+U9evNASE8HieX+E0+hzZul3ISRUUbSjGUfJYaJEAm7Kflsti4Q0Ka7MO8I
rG7rpi/NSfxBOwzwIth1kMkpkHtMF9Sy6SAvDrjBItT6RhQ9CJu3/JkZk7fGVFz+yLh6TMAVc+ue
/1yjVkhshuf9gGHeY4ZuiyhqQN/DS3GnrPTcsGlSFQc0eJfLgWKbTpQxfH7tDZQMakMezh8VB8co
L+l5mMiqw8HXWsCqpw/3e5xPDlNHPIK9XOqsqJVu45ysU2lcVTdmHrHjHZPFwhBn9xp5urk0aP1T
BsHRxzcgRwTp6ZWmJcBxXC+oo0kMmr0/FsFjFChLJRgQNce+jMNb5mTC3Jn72ikj2YyWjzKIFeNe
l6Cm0DU7/FSJk4iZ+nXNzLgf6OAlzsb3Xgr9DTDXmCsCc05o6cDCEcTTJfF/fgwL/FJyCAsZ+gz9
aSrGLHtarPus2I6dKZMqtyLVllE5HwU2lWHVOtFAe6vUjkuu1XxPf/bvKxXMXSB7n6/s1FStBs99
vQhK/dmZw+kJdZL5El2JfMNMlafZOc5bCDEswBuGcArHC+Q+a5Q8t2ouRSzuXwYo37IoesD0Tev3
pi3BYFWl5jUDcT2V5S7mfaR97atATOLtTCtL3V23TNnxF/csXTL34VWCkV1Vp2WBfU2oaOM9z+DY
PiyXWmteFwELHNUlmaniD1rmCFWor9zObsmhh5365bUeybH/lsYSSn9QjzJJNLFTHK/l7MB0eiGJ
eYnkYhI/VDbDFV6d/EdZ942RkdXEVm8UBurKQjwreOw2746i+0Ul0gvINhK6kdfzaMF2hxEt2i4m
Q+A+hImALWH2gjJMDZt7h8MRxC/R0qGty3H3iYLleOpn9q5V5UsNAABrhQrRz+YW7wSsP9BurnXb
IjyuK+vr8iyiQdTOg/Jg3LG1HAEOBX9dvnklw3Y2g66z4AVy7hg1Whrr96CK1n9Anvj9AlPkBK0G
w7ukk8/FG76aUChjjXS2FtksbE9EmGs+QiYrti/wjl9Ji6JTUEfPd2kO0z6HEayMGaVI+Lvssmd3
L7V3JPp9bjGqou4knxHtZxwO1Gfge5/TiJAuIDEqbWaMakB4j7UWX09k0krILo840z6sNmxxCYQP
qLW0/4/PRrLEaXEl+AE329mGUf0UmwTo/AXl7+Jizp+GajRzOIwWb3eZa1ynsEPTuJgCkFs/13xf
txjypQMgf9hCRTwgLN9Dhcl/RU+cD4hp2qGyhqknwHLY9H2tRkViHBIvVPnY6CoVTPg76a6bvV92
I3fpGGW8iX4+H4kZTu3mzUTN6vGR3Y55GAAO+sLMjztD3KS9KWxKLVPSWkRG/35vk4AL1Q==
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
