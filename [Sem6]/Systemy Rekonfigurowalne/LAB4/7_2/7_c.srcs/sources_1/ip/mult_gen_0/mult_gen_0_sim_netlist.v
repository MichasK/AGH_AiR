// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Mar 19 10:27:40 2019
// Host        : DESKTOP-FB8OT1G running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/michask/complex_calculate/complex_calculate.srcs/sources_1/ip/mult_gen_0/mult_gen_0_sim_netlist.v
// Design      : mult_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_gen_0,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module mult_gen_0
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [18:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [11:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [30:0]P;

  wire [18:0]A;
  wire [11:0]B;
  wire CLK;
  wire [30:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "19" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "12" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "30" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mult_gen_0_mult_gen_v12_0_14 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "0" *) (* C_A_WIDTH = "19" *) (* C_B_TYPE = "0" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "12" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "1" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "30" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "mult_gen_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module mult_gen_0_mult_gen_v12_0_14
   (CLK,
    A,
    B,
    CE,
    SCLR,
    ZERO_DETECT,
    P,
    PCASC);
  input CLK;
  input [18:0]A;
  input [11:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [30:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [18:0]A;
  wire [11:0]B;
  wire CLK;
  wire [30:0]P;
  wire [47:0]NLW_i_mult_PCASC_UNCONNECTED;
  wire [1:0]NLW_i_mult_ZERO_DETECT_UNCONNECTED;

  assign PCASC[47] = \<const0> ;
  assign PCASC[46] = \<const0> ;
  assign PCASC[45] = \<const0> ;
  assign PCASC[44] = \<const0> ;
  assign PCASC[43] = \<const0> ;
  assign PCASC[42] = \<const0> ;
  assign PCASC[41] = \<const0> ;
  assign PCASC[40] = \<const0> ;
  assign PCASC[39] = \<const0> ;
  assign PCASC[38] = \<const0> ;
  assign PCASC[37] = \<const0> ;
  assign PCASC[36] = \<const0> ;
  assign PCASC[35] = \<const0> ;
  assign PCASC[34] = \<const0> ;
  assign PCASC[33] = \<const0> ;
  assign PCASC[32] = \<const0> ;
  assign PCASC[31] = \<const0> ;
  assign PCASC[30] = \<const0> ;
  assign PCASC[29] = \<const0> ;
  assign PCASC[28] = \<const0> ;
  assign PCASC[27] = \<const0> ;
  assign PCASC[26] = \<const0> ;
  assign PCASC[25] = \<const0> ;
  assign PCASC[24] = \<const0> ;
  assign PCASC[23] = \<const0> ;
  assign PCASC[22] = \<const0> ;
  assign PCASC[21] = \<const0> ;
  assign PCASC[20] = \<const0> ;
  assign PCASC[19] = \<const0> ;
  assign PCASC[18] = \<const0> ;
  assign PCASC[17] = \<const0> ;
  assign PCASC[16] = \<const0> ;
  assign PCASC[15] = \<const0> ;
  assign PCASC[14] = \<const0> ;
  assign PCASC[13] = \<const0> ;
  assign PCASC[12] = \<const0> ;
  assign PCASC[11] = \<const0> ;
  assign PCASC[10] = \<const0> ;
  assign PCASC[9] = \<const0> ;
  assign PCASC[8] = \<const0> ;
  assign PCASC[7] = \<const0> ;
  assign PCASC[6] = \<const0> ;
  assign PCASC[5] = \<const0> ;
  assign PCASC[4] = \<const0> ;
  assign PCASC[3] = \<const0> ;
  assign PCASC[2] = \<const0> ;
  assign PCASC[1] = \<const0> ;
  assign PCASC[0] = \<const0> ;
  assign ZERO_DETECT[1] = \<const0> ;
  assign ZERO_DETECT[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "19" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "12" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "30" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mult_gen_0_mult_gen_v12_0_14_viv i_mult
       (.A(A),
        .B(B),
        .CE(1'b0),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_i_mult_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_i_mult_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
g7azmhtm6FcP7uNFjuXJjN8Z6yccOPk3SSjzvKB27peFKmnPmQmov5+YTGwYqqN9LpdyiUExk8K6
vPnJqontvQ==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
MFrqn2K0Cr7TmQ5al162oDGiY83d+AkTWOgFyXPYrTNznygR/tx44RAp24ytphNK9p6shs2EFMg/
Qqz0l8DCWiVEoJ/T8vMpnAn7Y+poGVGS1qAR3qE2njrl81VcGBZJeFaWIudhfr/DLTuuf2T/dWDU
YpelM3KbfYNPPiPy8PU=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FZca5XZouG+/BYoQ8qrJTmnJanku4IprIWRkO6VciHehE5WehR0wsZJhfKlqLEeY1oTPA4bXaxmY
NjYkrop4EOwW8t47/hj2kFLI1OKUAE/TAhCGg/aNSOViUbB3dUomG/y+TBuDt9L6g0Arj1vb/5Pt
IChc5ZdEfRr1lJMTpFfP+5qmEH6lePPdzgPZATPB4Zrj0P6EyiEsU1FKBuAKd9iYNGiLCxVomaz0
3/RwK2Nl+/l4mc7PJt5Hso+4s1qHb4s2wD+OgbIwdH26ZkEnKVFpaLiuWQKu9uhDLGnsBMPf7XDE
p29f+mrvP9Zi/3nonA2aBKrTwR7XuH+ZYoakxA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jP68OjlYJglq3zpmKrXOhq7Sex8XNW8fQKp4hUNmuw06OOoKhQASNTnjtyVjAIk/VXb64ViBu1ds
cNMJybDSWBhnChfJq4h9PNybShGJXxSm3NDOo5wUHKf10Eti3fSotB9rVks+tNdTEZo4O97kgfdD
G1FNOqlsYcQiShEGLLiEQ2yYtgJBxJ+jc8mFjIEfPhAYy1ElrvtFEpnhkNS2LfE7xdWOQdO/XoKK
ibeY08pgncTI3pvO6TMbXushf0AX2S7hgfk8ysZrT+0gktqFrJnyR6oljS6VVPLtRNW2vo/cC8XQ
Bzvwwt4cpSo5KLS4XxB6qClZipItck2AUEdIbQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
o7jAZIoXlFbFtDYmtXhfRBlb07dhBb6Wp03mlT4T0FXtvccSHWhWZgc+VUNwt6TohLihOwvSipPP
XVXpGL4pUVYNdQBCVpFzhMkt6jhyUgsF5t10yI5Of6YEfQrDHigceoBukM3+/zJHPprrPQE6FUvC
wXSGhBCXnHJs1R+n4l0714w8/WftPQhlD9QGQp1qT2VARQXUKBRxcRjxe9TcLfs0P4xnN7uHu0R6
JTmV+MHmhGpetSZGx+B2Wa1MQofUPURqwE70IwBoUhdXH8+39DT5I6x2+wMY6RcVATnhNd2BCgPd
RzAhwfrcqRiU9aB+eNNdFR8ve9M2nGMmV2JxZg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Cl1Dz+fZIDYEIQuUd0pSg+5jknmtX/JERd+yOZ2SRaVra/4pU/eCTjEXMzhz4VFGYB6dgUxMsGBk
nL2WNdn/uaSPpi6mNF0UHQvZik4pUkYPrnRbFveVqW8i1t95SG0RW96uD19206lWrp5U1lqc4fH7
sfKHi8ZpU3MAg0DOO0E=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Qqp76m2aV9ue8Qai7QUavb+lhRYdu/txrnwYLzwTe0vS0S2OD1vxr8VeIT3bF/ZuXlTGm4S/UCSF
bgOPp7VqEOeGNfsSPK+VpQ+foQMENCQYccwKquBDSg/sLjpPK9uuoGLBLxjw2OwsRzplVFXiPcRN
LYK1/FmCP7RJBNgmhh/ti99a+WSl6i2YIIRGocNplQlG8FXq8ZTTHd/x2Gtdf/zGvJOy/fNsos6S
Oq9yJ0rMmbGeWbri5c04gZM08pUmXBsivgOHm2IVEZZFM4SBqrsi0xa52hs2kelc3iKJcWiTvU3X
0fJP9qNFuIjXBPPZvEYwhVtIh6DwiIC2viSscQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UpHu6lgUMHixiLPRvnQ+jjBwgz6cowbm/h1eO5+63cUtkWJd43cd7N07kCL2+kFN+9tuJSfRCH6x
EY6NGg/RVWuWZoUzch0322qH9OufEEbXLYWLdZrcKhCVXpqagT2iqY+E4hiho7rXrOBUlbhjuojo
jpjvVVv871aBlDwqeMpeIkvVaTytbN9a6P1Gt1VSgvH3Sjg/TOzFqc7PjIdyZc8Th9QQgEnDVwu5
SwVEuEtIgU0YuD2V2wVaw+tRtBvxZvT//6yAYHR++jt9B5cg/3Ix5xX9aLAWM1NKh81pIul01FGa
57kpmxNdiSNDtiIe7Q+RYZ1KKirP+WLma5OgGQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
SmR3NQu/TWDiKrzsbXcpOJDWermzuZHrwCxe0B06AtOPgRszfCWY8HxuqwA38AcSwL6dzDPKFYIA
UlmonjGFrYvY145bcixwoofYbcGTG2+TxqDMMJmfmTx/TwRyRf4Mg4j5hpWl24meOlp2Na3EwYAg
P3UGrZeIDLALtL0SHIgilT1/ov4SSimskVjn9cACUCyeiMSzBE1SXEP6IbbX3/qJn+Wq3BkH9xsc
IXm8krTM0HDLoxayx7ClakwsoU7euyHWmRPGcJGtN4FAxddNfMK8Nkzm4Ko9JWCth3jeoztUUBk7
uIxNEC+u3vAawieG31evf/nIdnxmYNaPAoxq2A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7232)
`pragma protect data_block
KQ45jwBD2fsywB3Gm1769c6XcnxV+9i3sVB3VTO69JPB1Y7SO/2RruhZCMF4ZPBRVoWqSYXEVSSi
DHomO09rr7f76khtqdcNNvQIots9Ktkq812ZaOvahLi+qp7VrpzGAs61lqCAQsW5iXVRH2KEhRKx
1DHoO1WwuRyjdB7kA492Am/4Uuj7YB8g/lAZEBWN6lsUWEqD6yvHI5e30fNJwn1BurlfQ8pPSsB4
LkR/jD68yCUXViwJSQQ3P041rwWx+RaSWT6o/myXM0E4S1KIu4qTPMbzEBFK7H4ef1CgSuxZ8Vly
fugzNlPrqNXT8GSV7hxk0RwVKMVOvioOJDdTc9s8Btw+2G1UHAXpoWm2QfgYdOBKB9eFftHdSK69
JdHpFQ4XkwgYZ6jGCe54/4rmaP7/x6+Zf1bwZ3+/BeM9ggHHb9AB8QPLVMS4TLTyguzq65hTK504
RpxFUd+vN64xdJK6DKP+jd548MXTacPt959czz9eePPLxbowsamNFfbWY32+LQFQlmQsbPyGg1vs
0OodLBLxSMHCPUjnjd3PXB3i3VzJ1myYsrdHRIWUsLhX4qFGFeRThoByH2vjS8kfaHugemuNIZ2S
9EVcYtqgm6Tw28kL3L3wxgju44gL3WQareLnDtwytxUXRFkHL35yNl4tqndzY3W1h0cnzMjtLkjb
b+Dc8b4Fgmi9NNqxrJG1aHBNZGtQ7pYu/agssw24sJD/JRxv9GhaCdYZwMOderD+j/2Ja4ybyVUy
gnW9TlMP80Pjy063F0D2mPsAxJV/5vj51CleKskmbKbV4Za1PI5jEY+AOp/L83cCRraKxfCxjIaG
Oir78FlBPjzkw1a/sZ2+9G1plAxdaDztoa08DOBxIBVi8FotkPs7G/iDED02gZqDpwS9jd8PXE3G
RGauLepQFEwhUDiTJuxFJZHXlzLloNH8KKtbHzc+6EPE8NzBkNHtE3wyLEKqOZpiKwRMNLiT3uh3
s5na8M60oZY1bwidOHY+KXqPbhavMoE91/nqTpWNCLyt+hRaTKmKis2DFHoBGyhB2bksKN80rDNh
rP5R1TXGFmvPbmUzak7BI7RmPUNu+QEpSrVIqXmiMYUVEG19LpHiUMKM3RUtAF+7jnL8DhRsyPry
Lk6k90k3EkjreRluP1xUwW+WBmxjJVRgEDFVCBMdBrG3f0dVsvGIWJJ8226ciJymfoc0IUU33sGU
+yWiuQyJZmLzJ2kWIFI9i4SUmB5Kgw6KStAg1CYcU/c9xi8aNccA/NWr6uWSUCAjTq65kZIRqn1Z
vzY4R/usoCIf36hpejcwPLbsEgw+ujphrUdsAtfDC7LW5U5kkpO9nIext9nXR4Vh1PDkEoXJmUKn
qQJ0+sFJLU8IYb8j5pAHOeb3tAMZM6FiMamfdvFSsKM2GNE2ASLYIScrYN/SfxWwj2Sa5alZxiE8
nMDKgRfzDiSN1q2Rcr2ozazlzjbCq0Zc5jlq3BiaDkgSv17PQOyqyzBKeQ6cWs+bSNZe46Kglkcj
kP6ef3KGrpqw0OK0i3ScWttLfGWTlO4FAJAklbT1PtSoyC2jCPDk5wXX3xIEDO++xfeCKlIPlCfL
i+zMyrE/BwJNd7VC7MwcPMpqYFaoq7pHX0/lPcwHsRiezRASMw+WFBE/wxTh3watNvrrXZCBenI9
1VetNfyo6E+wLnB4o+eeRPHJEv0HrlXG2o6YEfgPbcQYXbYJl23k2zbagGAgpfiwOQZUcMerrksS
tBNGd5hs9RgsCJ5o6DjvjI9CUC2z5Q6WbdcAvRw/bqImG4DwzWWaK+zH+FFfX2lia8aWlsb4PraF
iPviBp2oyg1eljdV8Yo/sV1Mo3NV5M1A0S9mtd39zaGCDOxgpd4nO/lUbkE2lgZBtAgfW1/DpdNg
HyJkXeCQl3HyogFb9EXcYw9Z/8ftlE9P2SiSkqvQB7/S8gd0X41Uh7cyP34QW/1n2FseF6eZWwPB
+bpfri/fY6b9cIwWJ24X/Yw6oV1JBg+ml4/W4zLaSaTy4PaGbw4e7wgzye60iwtD0/xkKVOu1Cgn
z3q5S44ksi1dzovmlmZDNSu3C0CE+GjODV9JWE0TARtMPURl5zdFKCb+JwgZuSWYaeQZLIR5e6cT
sS4fI6PUdJC0fhCYL46niO2Vmjwt79u1VelH+0QZ6MPd2SAdfUOHerOG7pnyFoJy5SKvpG5iT95p
eqnBxWYlqVVQKGTkP4S3Ijt9ctMSc+8D1NhB8fwd5pNtXaMhcKPwkbDB4Uety1/6kWUSV9Z0hQK7
Sao+rMt3WBE22qCz7c4ytCEEkAwi6NNRYIQS7aEDb0+LknCtggmZQ8sy+6Vn6vGhNXsE17G6bu0Y
FfA1bZrLW5S2hkq7eNmQG+mPivs/4BiwKVJ5hlNI5DWnu1bofojtmPF6MUY6AWofvvMIl1x8giPB
WJ+slpzRvAxtxr7nMp3CGE38qc5Fj0ZJlAgDlCQzeqmxYFzhgORnTAb0Jo6FFZ9K4oAHs7pZtjDE
tlEaq03LJ6biIN1E+78kAK9E4nUoKym3ZunZEWkdHLR1k93X+2po80fn9GqxXG2A/yI8KPP0QfIM
HYEFpNfjly67QdC5G1Fri1mTkDt+IVuXqnH4kncF50YXeIVeSTX6w+NERgCB4rOPUR3dd1/ubk3x
l0vEd3TVAHS99WQZYzywmlNHQNQSBQTe3tddyXpyUbGc6gMJdS87ES2lTF3TC3dsKNb5R2O4rn9u
2+CUqqc6W/1qIRAT3bO4xllffdJ7bAzkDfHhYzkQM2JV1ZljcRujaX7/7sUlxQeNhdWV+BV78TnF
8FkU1ZlW4o5bDiawF0rkMJwcmOHkhssmMVSIWH11+77QR0t+ir86+/n/4s0w54N14rSuMHyvrudS
W4EKkjMaa1QBl3bI6NyeSUg4wMezD/Z0mQBv6JvE9QbBhOhQp48cwIDe4ey0xGdlawPuErvqD5qs
aWOyfIwl7Jz+a9MaAbOSb2fX2mLsRRYQMluLOf1pM60q8vG5YmQ2q36WinuAGJnJo94B94r6S4b8
NURhpBYDzXk96JfUAqWtvl+SWcKCJ+lC+ipvmfgeNC4m3uKvDzDuMhi2YjWs5dtFy9eH9BtogR4C
o8Ey/FER1gZZ4pO0iHfLjzoUERLOxJdO5hnjJPur1g5KZA8wPaEnFL2krOw06s+RUI/sV1Togjd3
C17q9GHeQFcJ/zwfi7vn4s/vi4U/OH2ZSKrTHqtIBcDAfIskYqC/6r6LNlY57aKzxoofpIfTOgA/
BjR0J4tGqF2RsYfQo/yTBfhfvwyVyM7oFYUEKqHSroKL7VjLVlB94E2YgLhp2wPX9HCyRJlyEcsm
695uEri0gNOLEe5yneP5FnXi94vkpWKnGN/Je/Ho3oVTEpu9MmTBQl62kT+5AFAz+ULSmAMmWXtY
8LehqY5+VRvow/g59lJo2ogmm0IzX6DxZFlf7RSNB0U9US8GmgYuDTqdvNE9ALtY+lzO2hqLCjuM
EyxCu7T60G/7Hqyc7KAjpcUqbBdSn3DrACCahP8PNaC+OtzLB89jDRYYZGvOKi5Bfz8MfHge0h1G
xR4OgsRf6p2qy2o8whODY1KQWcjPivQVAYU9JQnfmvWe7ORNvJCed09FI/DudtRFpW+PWiy3DoYO
4CCAyPJ6h3TQTGsrBqR7HilxPl8hJ13zcyKlUEuZz5Nzy5FDat3PbpAqDIg3V2UxxtnNcZPr9FA5
XZcYy5Cb6nM3XjfXQGtFd96O2e+zOXMeqlE7LehuMGZg8bKyLgGSFzKluqjk+U6+fxOPMrnrDU00
CcABt31NMvC2QmZGhRBnb7kOo7tUxMnVBR+ApG1Q3X0P1LDRFZdLVCfWlwdBgLMyNBOrPesbVDtb
HdtUwT0zedW+ce6LjGsatIW0mnjPVd6Zaf8JpjcVuoUr0h6thMxn8Oc43l2NieSYT9Y+4iMvBMOg
hG7E5S8/b/80HaFwFertEJUk6VYEWPowGy5FkKOYAz5AbUqjhrVVOJPqvXPrURtv89hzN5o62NlS
5p9Y+6kuvcVxfxeSyVsZlPvtMgTIYwV1fklynHD7l5yGh3ZGnltjYwHObtS1Dhq7iaJvmBcTpBxk
s4ADWhD/9UlnawRegUY4xC3LgHsjX687ibegdDztRpbMG/hZOVvlZxJ2Y7aGH5nx+hW8GNF9KI4W
jq0tZjJzxLOSzrFnnGuYRAJAt4NQviyRgQgd8Z4X5lI3icegFyaiCfqnUKiR6EMFFHrQc/yVTdyv
aRh+Mxx83CtJ+oMEvkzUuyN1eeOH3BV3DElpeH4IhhpE9zqggl4ssg3VysvBotlkN82UigGBdGqc
LnXva6D4ZstKzmAkXuGzHg2+4BK847VjL/0+4kUvdWu35ZwxcRhEFbFmkFwPbKa3Trn7NEuG2ZE9
lQLBf1KaRk5MNVOe7OpNCbNy7bVBnTeW/+seYHi7BY5lUtXumHE2h64OC6TehXo+wsGDtKqYxF/o
vis1GqBG6lJonUWHOdf049E6o5qTPAPVulV7+rgQ1Lp97bJ41AvoXOa4hCLkYULEa+fPiVef2GwG
u+rKmpmWxXj29FdyDdfraCzS4JoQCdW/slNC6pVrvaxx2LgCfPn2+bpmV2dIBTdzogui3WCLAH0h
kNEWg4WtBOK6cRAaXuPbXCmzhSCpISgD4U+Kyt1xdwTj8K/pAqXqNwxhx0l+yV7Zl7gTBpPloZKZ
ZAiJ+sHLbt0byEqgDs4rX6y2egcoa1KlINLdFldf650rutWK9/XRRnoyFXLMjKYiz01xtBS0pSif
cMh2SqHIu53Bl+8Fz3ErCJEXsWohFOTXsldcuKioyGagb+bC+VSv25auJCweUW2m2FF8Q/EHSRrq
ol8iJU3N8yjn9D+kMsMtE7Ag6jhrq45YYRPUVw6wp8vLTsA8iM9pQqhZZAYrVVCTfUzgdTUnGAw7
kugSHdRKkfkynFlJZ3oa9aK9W/VHs2vND3WYZgGqneui80Nbf7zuCYpMA6DfCDbVOUnjCd/SUQhZ
1FjlfMgd0F7R70cLozAD82KBenK08eB453AwZWxbImFW2RZuDbsglQCLQ/tYkiirZwEFSL7ld2l8
zbaEIbkUeOunwR7te2+SK5foUiIDourltMeXi5iuodCAUBJBjNJUNIkyo3Fcv15Q+iYYjdydQcUn
HOSjGxI+V11XOv3rx1bAtzBhduAivaudiRMy5VyxWP8Yk3K9JTKoZg5pL7uDsUrjpbbYZE348p7u
CDCi93GHU8DgKT9l4UGpPqHBee0KG7wyObahcKKdecgq3OF9ENpEIjgaJKoFPBZ/R2pgfUgUu3Qu
lmSh4v8NNHoinCaPKRRNc+/qM5faDS5XoJqcPQqAtgIn4p4MurU0im7JGkIJT7rG37MxvPKAgLIb
1+VM4mDFVyLtaF3rHDHgrdT3kujNIwZUwe0NXkj9UEnzXvYtLxD+8oX+F5ytjGYhy+STa2RYmKWU
XLzRaEqvHQ55Ng0lIdo70Doxe7Bzp5YcD5uohixy1iDjIQ/X79YJBxBlcTjubvOp8mX/klfYvQTj
RHRx6dUHug0G3pxGtmEwcjz0hW+XyLLW891QCCazf+C3JCO8ebz5YO71tgCUkTIrmlSSJELEvwGD
YdZis4+MI5M8EtM7fMiSCyGpN0OuqrCboMByuCVyWZXZgehk3frgbBVS63M5bDowF2xk0bn8A02g
e/g+OToyIlsy5yiz4JqMNLcCdwQTbl2HvMy76q8Wrjnkp+cdyB02HttAKCcjh+ZuuTWZHbZCgK4X
XHzwKqDY6iGvB/5TNvDP7xg0bOAj9a+ld+hXGcMphBFLFWNfzW4+TuV8pALALZv+AZJa1DWVxVbQ
8wi8VYOA+KtsDDgWqkH6EVeur8dGbdpYwjs4YoWW/CXSuvcVKEPwnzZnbnPiza5VbkxSg1orY29s
MeEP/T0/VOkBAZX8a1R8VQ4t1MqkVq9JUIQKxTKLyPoxxn6gUmFToGIvaRPVk8OSHuGvAh/tJ7Nu
2b8mOImaSJzbZwxq4FQufrNshVAqbGa2Xj+nsGtIiqRFkJ/UBwCaXuT2DkN9XQvxjXihe8heQIY/
HRPuKFHcWSFc57qqGJxhbOlIggE2B0dwhs/JFEsYpG23lPtptuvlGctdy4qekyXETUFNnh9+Gw0y
gThUXekcIZriN7vJqDYTh5KnbKCmYmD4EFQcGZPEg1svRDFZP0hNG1u07xd6cA+3NH0mqYlsik1q
/0eSIbWZmNoCA8IoGz90ApIFEM8LzSFn3MQ6JM3cGej1If/1W8NP3CjGH/aZSduwEsuVX9NRObSX
1wSda+hL5Ih+JuHpKpcQRC9kbL1jd2qX4DEx7J/XjAyO8OLizVQBBkOJLNew6SGVpyQ+40IDUlau
v9q1yZ2/3KF6faWjXXLNEve3M7mY5nX6fzbDyglS8M6JfIB58/eeHUoDZlGaXePCqDqDHVjeg/9a
PdLIr25dq+Isw1QLdHcvdlbWiF80nAt1AwJlJIo/BnziyONK0UlA4E5FJ/qJnb7FYpRM947l/EiU
xldSsb4ZX/iZtle9fWO/of9IQNHjU6zyNtb4J1Z+1M2ECQndkGpIKDMFlZfmGd6Nq9auaVZDWTHB
SdZKYhRYH2XjqqGd3VM8ULxzHDrrcICDDn+Y2vnZ8U4heMc+59ZOTmmNLrK0TIupyi5GdO6SWbwH
4T9gjiEAsxJH0QQPcL9T0nm5WduJkJGcRYUSKfrNUWFHQbUCcenJM8T70nGn8uNDyLOUpocLP6AQ
Dptb+UVNonu6VV/hZ2rdKtOruzzBlYybzIv61k/CSin2haj8pJvmmlzTjVWJkNw3qAgKELjfp5mq
pmDORQeXMRJxMGyzjlYQCXCUdfYY1k0zF6qJYs/uXZSs1j4+X+Z923+myCUvBRo3Xn3DlxkiS9c8
rzlPDU53ANLBOu9ov2rmwPUmqaTsK/TK/QcXrmGWOlBq6lP3Q2dYEqG3RqPIhCWlW1Bjp7iH7WqT
LSnXmOhzsJq9onMKYhhhMketEZHq1tOwz3bMum0kcXtVec5ZZI35f9+/12mot9YXQt6PwmDwuvvU
2STYlJiyNMb0RT/KCeQsjwWmJJXpoyDx0nMOgF+vt3LTB3ZIorK3V8BUhG7iP4z5MIHJlW6Y4eAh
Mpn0rv49GL8YdpHF11exJ3D5/aGaJOpGOPf+jnwFj8qhQcVYXcgxMWwRiLH7t4GWsfLx/w2ts1y+
8JnsSf24B1Jf4YqCEn8FR2OcAVY2xm99XvXBgb/AvvfpI/QSmDXqHH43xqgrx+MfTz26CxNhza70
rnKcy5liwMGiYS3XfHRB+stdTyX3JPWm1xuXJDn3VJRuUMdJTtSqTVj9v1LCOqzSL4Ou1dDSX+Nh
77ZuueffSgbO8iO/LB2gm6oNGqdcP12P3sN1aVjZRw9pcMWeUHJo2TdAeCKteijaKv9mENfL6mM5
F+pDcJx530n2eYKT8iF0bSPzo4MYR55Kaiul/8bE5GkQbCwjWVXD+S4x67XyS+9K+nf8d2buBBkT
AJmV4PiT8iiVgbjRG2WzduFV3+tQ+a9gJgT0zngZN/0oGI0RauPReBdkC87KPPN75II2ABlTRUoQ
XnbOA+YsiMv+vo/CnoMV0h+uou1XoVcer9S3gA0pgaApycX6MuRoe0f76HyEVfg6LSaq6bv8JT36
j3VdtoKIBgRRyLe1PPlildXyYTqGXB4FkuExlkb3V+00HH3fXPWZImeJAlVkIyh5f1kdn15flxGf
gxwVxYqB+0L0xA02JdS1L2qNjGtYz8hs7J0HHgRwb5U/ciFUI3xpVrFNgzNo56MycgMJzvwcLivl
SQtZSRL7P7RwF08mibXi50fQHu5X6uhG4eEj25e4T5zIceAgF814cOyhFhSYTt7J+ETlBUJEKxCK
7JVaYnqDqAlV36LeLYF6SzkopT1slMeZUxVlNIiPyOiQHn2dOZoQtU9BMAPUcGhJKD/W/qCm2hDf
oL9eLlSsUxo4zCeU/cW3h5vRHCbVbUpk/U1ktf27soHnNvhwBXjjEthRHlCG4MFHLNpSJ1ZX405e
Brt0azRtVuwE+0vYOAxJZegCr6SsBT37ynMivU81iyQnH96ihbTJWpMtyZL+jPPYufTAvtpDTPPK
0gKaNBMCmXaXF4X7iMgU6tVFc48zFlxOhHE7K0uwd1WL8aTdpEoygz5nmFTofqCqHt9o0Xdqx8ZK
hH0+urOHgG27qPSEbR+uxiDaNnuReIJj7ihX5dB0p61OktjSp552qeKQIBiFCefDfIfhJw8q0rVm
j8pUIPAN23FxCgNYNWowaTZhG+cVG9F/wF9d+JNgKe3haJkEyJ7hLUJpf031nOSw86ybo7qj8shr
IE6WXDJqlQqUExjNEUxpJ/sIWIglQR3KwvubGnubPZOJ30/gabARrW7YHpUBONfWQ+Z+JY+CMBMY
cIPoHkfTV0ml/1fsVZDmBE//e3C8XThOUVibKUxNgJwGNyr/Px9RR6MczAZ8ymnHwoEOORYuhBhK
pRT/wmXnT9T+G0RTnM1HxI5HTXSbkBw19ryzV0CY7zvQI+Zr0VEYWop1Sv9u+aU83ZR6TVlHaJeY
qLU8IcVpUzjY5tkWbeOYOwpQ1Tm60kn988kuSkEIJJPdL2qEqZ1UkOzGOn65+IQPv7YjuVp9djIh
H8A/+23ja+VQd+E/FsC2O/fRshEhZRy9ll0wvIx1FM2w78Rmmc5plmZU/Usvk1Jpuw2jSbQUDPL6
msg4x5qBjUkBDv1o2Oe/bDMGrtKCyVuUOg7Yz8U5av7mB7XKKluizJnii3IO5kYxWAU7PbnFw1nU
stMhDCKWbXkwRYnhTqZdzCF0BpxN+OsBbo0dAoXxQOxi35ZDNU58XRHbPDKWHaTFAr9Q3tO8nV5D
dXHTcK+HZUXwHZmmlW1K/Jea9pONAeAr+gy4nm0EnD/AD+J/iBRF6TiZdJp68nXTJfHS0M2emFQQ
LwEHFQLl0vVG3v8G1Fhsmr1jtokdum2gnAYUKRoEz5pb4zPvv44oVCA+raDtI5o0udGcsYpAs49h
bCSm81pp4eDYBqJHJ5PDMRjboJ6bymAvQSwBMBbEn4BxzULoHFQuQs0xsOcsIq/aEqSb+q6zzITw
sMuu2QoJj0Scnq0+U4DF/h7+KhcDM8Vt6s8Hs65CliJmn1Z5z1WY6Ft539x+sQ8sOBYPLp8tdzA3
InzQTQFP0Y3TvmFRIOwe/2s+50+RyYxKiHaTNXCMqhl8XPKGtjXg5FmsYimiKuFrlmm6EXKZLMn1
Y2+3/lAnImP0wLkM7jZa8fRXXbDyQUuJj643q08m+RRVZKsjSC/Ftx9Q9bMft0PHFM50/thbLu5Q
oZU+JwSVo9q2nidxcr+9FDph2l2QsU0ig/jvPy3WyqE9MHnHqYFh10iob9ruccMUn3dfQTjwi/F7
b4AOXUFzPgZyFHMCW9i2EBjXCJaegAGaKuP0XrZ8vtFr5poYrTwAWCGMtGmtvDJ6hXyYUWD8jWI4
lTuW1SjNwfczigDvnx4E8RrTDsxSClXRJsmRoeAMpEHMKGgngIn20LLgP90bjCHQZHkdRiO1bu9V
xgkukv/8P/ZArCI+NEBfFohXc1xFjzIU9HCnxSBL76nahfddO4O4t67gS0TlzvN5OEg=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
