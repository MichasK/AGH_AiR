// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sun Mar 24 17:54:09 2019
// Host        : DESKTOP-FB8OT1G running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/michask/project_7_3/project_7_3.srcs/sources_1/ip/sumator/sumator_sim_netlist.v
// Design      : sumator
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "sumator,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module sumator
   (A,
    B,
    CLK,
    CE,
    SCLR,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [12:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [20:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [20:0]S;

  wire [12:0]A;
  wire [20:0]B;
  wire CE;
  wire CLK;
  wire [20:0]S;
  wire SCLR;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_ADD_MODE = "0" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "13" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_CONSTANT = "0" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "000000000000000000000" *) 
  (* C_B_WIDTH = "21" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_BYPASS = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_C_IN = "0" *) 
  (* C_HAS_C_OUT = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "1" *) 
  (* C_LATENCY = "1" *) 
  (* C_OUT_WIDTH = "21" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  sumator_c_addsub_v12_0_12 U0
       (.A(A),
        .ADD(1'b1),
        .B(B),
        .BYPASS(1'b0),
        .CE(CE),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_U0_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADD_MODE = "0" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "0" *) 
(* C_A_WIDTH = "13" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "0" *) (* C_B_VALUE = "000000000000000000000" *) 
(* C_B_WIDTH = "21" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "1" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "1" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "1" *) (* C_LATENCY = "1" *) 
(* C_OUT_WIDTH = "21" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "c_addsub_v12_0_12" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module sumator_c_addsub_v12_0_12
   (A,
    B,
    CLK,
    ADD,
    C_IN,
    CE,
    BYPASS,
    SCLR,
    SSET,
    SINIT,
    C_OUT,
    S);
  input [12:0]A;
  input [20:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [20:0]S;

  wire \<const0> ;
  wire [12:0]A;
  wire ADD;
  wire [20:0]B;
  wire CE;
  wire CLK;
  wire [20:0]S;
  wire SCLR;
  wire NLW_xst_addsub_C_OUT_UNCONNECTED;

  assign C_OUT = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_ADD_MODE = "0" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "13" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_CONSTANT = "0" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "000000000000000000000" *) 
  (* C_B_WIDTH = "21" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_BYPASS = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_C_IN = "0" *) 
  (* C_HAS_C_OUT = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "1" *) 
  (* C_LATENCY = "1" *) 
  (* C_OUT_WIDTH = "21" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  sumator_c_addsub_v12_0_12_viv xst_addsub
       (.A(A),
        .ADD(ADD),
        .B(B),
        .BYPASS(1'b0),
        .CE(CE),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_xst_addsub_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
INaBf8vh5mCmDzf2yp77pxZAxQdyEQiT/vG2dEgvrFjseUnGc6ldwH4JvdnpZSpdf/ihioPyMNjl
u6ooyzv5TA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
S5XIZZtuFR/MZffuhwdnvE3H9oRWM4uXoaGZTa/Dyk62O+Wa0v41pjmZELCiR7uodZPFQfykZ6K9
2ZDMu8dB3afQRMs5lnd/53M1b9ke+MNEeZ/wzjUcsJghubnEAwzdWeW/0tlqST1WD9B/KCxYqwH5
Gj6IZTTFHAXcaVhnCT8=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
CM6IcdzP0PbD6yMSqylmi4JE2qpmxiNeI+prjGwJiD8e3Xsynu3PbGKJAOpOxtR1hT/3mpBcx1Rz
Fkz0QBh4wtE8fiziv1i+xi8T6cqC8ClamjrpZ//sn6dh7NvwSYik14MlwVuei4DZoZJZF63aoPUn
RXkQ13wtK+MkYKBcPVSZMFZmaCU6jMMBYclXzvRG1JqqZoa7mWFTeFZePUTXG7Wo12QaZ8GUi0AV
UIshoN25yn5e2Xr3FyuEtm5AvsZb+iLsgLeHBtKBnsVaHQphicgqwgwv6MQQF6ZNBgU/aACfibDS
3+n/mMMm8k1cj2bW6VCi7a+c8LmCf81NlJuLww==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ehl0CusS7+JNGq6HfhyaBMy68nccIdIGqixoEztEZfkCpXuUYsdqw6G9MIJdWdu0Ck2acV7K6IVg
rzb8/bNaDDVWp48kupToegTkOdwDkCejEqppido4BkJ+iEkjPniz+aJHlOlOwmauETy2hCMuuC57
oWDprzGWlsqbCjqzKrXmPYm6fNdcOa2DiOYstQaMFNbPU2ccrbLJAiYMHNDqtPNqWxKBsD67kiGf
2eOneDOmdmy7YkNsL+cx8MJc3BVUsYBrpAEsGyFMkmX8a8nYz8R/wlFQFGQAd/t5XrfxFNI58mj1
AHXbcAMhGKVq9YdKeU/vSXY/NwMqp12xJ1nUaw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
h/qRAwiPuqY/Zg/QWqbaYm8xWTi9SshYuPzyL0UME9ZDDF+C2CyGAugh9HzMdD0kZmT94TKmBgLR
dKP28nlE8VCCU5rvbjKxfn/wNtNKHCvZ1hns8CF7+pGuelhxGvXNmYKFw5co8+4grYFaDXeoZZR6
S5sjvhqtSVD3+qq4vYWRjT2Y/yes7L9dRsLq2D3iZ4xjgVHuIbOQLT/EUKW+9iYudT9Uy6YTwB+5
mSb0QK3YfZdGwZyXB4S3mdF9vNQHdW/rnACq3yngF+lprNkh3ooQKdGqtxtz8KSQxNZOAFE+koOw
h00o7AKpvDAp3uNguLvnNJH3rugOhh95b8Jatw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
TsA04vIYHDZne2CBj5bWCBFH4MtNoFDCn/3DNEi0BwutuUf+X+lD9kAO3kl352WHjQbF79Ssm+PT
fCYpODgWdxSVbzaHFpITxCQ4HcIJhUeW5PC5tw09Tand68D6eg84qRguH+llbb5jdGJkJeTCf+Mx
pupkkLiDvNyTYWe+nqw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rx9hgQkvaJJTJJcTjGFW1DrrWiT+xanrcMvFn0Z3KRXlZvf+SE7IQgGCiP7ZDA6T5z1Zv5nzS4h5
cVi+CvwC9UMZRWmLDAjzASJ2nx1g9BjbYe2vHAUmyurIiR6LSigTeM/9TlMv+fFwJbqwuH6FJ3/z
Vl4tIMk4NrqkMn/riOG87SjhesepM6kcQOBgDGzLTG14z3qeZG8OPzxgApfyubmX4qdD1oTgGm2u
Q4mQfFxEye6Jqkn4Rzjhifs/ieNYomHlK7R2/72QJj5j0WyYBIhvO+09izz299Z54ZP2ZXaRMfDT
lU4lQNqQU14PX9Yk9p7sy2PnK4vTwwF0CFIgSQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
o44CUSOAAxA8t3Be6OZCUqhPpmvM71WiME1vgnrR33E/jgrwJvjZzjzCCE0v42ZQoyA2+6vhCy7Z
1ekfsfxbF7kRzYMRo5+cSzEAcMx8Xtqdx96OCTQUqZU0xwqf56ia3h8/+h+/OEhLgwr37T6gYpRO
etl1LvrQ2Zuh1b/GUaFSgLRJETtRHzJSP+lwwe4zSC/jMd22301i9ffRKIBIkW7IVDXELJiNM2S2
c3g9OfL7ZiyurjgU/ISXNsednxHKxEGNLc0JMXF+Gg2ljrwhBpWcIRTmxgehKC5f2/O9vuCGcZ6/
Fu7a6hbUcjwnbaNt1/+3CMIX58knuHaV+hZocg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
yMHWFRN8OjURpDdpcvE1GvlZqMGaksBNYif5STXtieOo6gxko4dcrwkQdTd0a/JjJbDTC+jFAlhW
cc2IHBguz6IrkBeJXFRmA3QRNmfgNvZCHpmRR/xGO24PaTFZikdWGVtA4X+Vv49bnCH3ddoWQgv7
UXrC1haYdDHP55ghOU9CGYSIFPVxk6dRZmudpR99/8G1nXlKrK7bCe6tAGK2xKb13d/nJ1wufRcq
aHG2ev7F3Gao+vWmmyf6lJC/0+5RfGCJL21c8pllZQItAhI9jGK3uNYen/SvkuOM20DZLnCQ2Zx+
hz4MV+7tdpK2DFyHu8xyjX0zRx7XAL6Aycuc5A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 13072)
`pragma protect data_block
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
kWgn7JG0D35gOKqqTCXlE2DJSQ==
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
