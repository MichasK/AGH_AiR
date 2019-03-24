// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Mar 22 17:06:49 2019
// Host        : DESKTOP-FB8OT1G running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/michask/complex_calculate/complex_calculate.srcs/sources_1/ip/c_addsub_1/c_addsub_1_sim_netlist.v
// Design      : c_addsub_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_addsub_1,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module c_addsub_1
   (A,
    B,
    CLK,
    CE,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [10:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [13:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [14:0]S;

  wire [10:0]A;
  wire [13:0]B;
  wire CE;
  wire CLK;
  wire [14:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_ADD_MODE = "0" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "11" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_CONSTANT = "0" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "00000000000000" *) 
  (* C_B_WIDTH = "14" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_BYPASS = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_C_IN = "0" *) 
  (* C_HAS_C_OUT = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "1" *) 
  (* C_LATENCY = "2" *) 
  (* C_OUT_WIDTH = "15" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_addsub_1_c_addsub_v12_0_12 U0
       (.A(A),
        .ADD(1'b1),
        .B(B),
        .BYPASS(1'b0),
        .CE(CE),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_U0_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADD_MODE = "0" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "0" *) 
(* C_A_WIDTH = "11" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "0" *) (* C_B_VALUE = "00000000000000" *) 
(* C_B_WIDTH = "14" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "1" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "1" *) (* C_LATENCY = "2" *) 
(* C_OUT_WIDTH = "15" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "c_addsub_v12_0_12" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module c_addsub_1_c_addsub_v12_0_12
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
  input [10:0]A;
  input [13:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [14:0]S;

  wire \<const0> ;
  wire [10:0]A;
  wire ADD;
  wire [13:0]B;
  wire CE;
  wire CLK;
  wire [14:0]S;
  wire NLW_xst_addsub_C_OUT_UNCONNECTED;

  assign C_OUT = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_ADD_MODE = "0" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "11" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_CONSTANT = "0" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "00000000000000" *) 
  (* C_B_WIDTH = "14" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_BYPASS = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_C_IN = "0" *) 
  (* C_HAS_C_OUT = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "1" *) 
  (* C_LATENCY = "2" *) 
  (* C_OUT_WIDTH = "15" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_addsub_1_c_addsub_v12_0_12_viv xst_addsub
       (.A(A),
        .ADD(ADD),
        .B(B),
        .BYPASS(1'b0),
        .CE(CE),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_xst_addsub_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
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
ZGfQw1AsdefarXDxplW8RyKzlMRZR/7PIceFZ9AIiR+37lJaEqLMDis5/OITECBZQD8ucCpacM34
FCD7kN1DCFR+RcQO56KcG66x+hQJZvADOr1nPCTTeW4Omcms80G+m2395wJd+xFC4aVuVROUPLqm
c5PTpGLHW5Tvhz5JxvA6qxNdbb4fQ4ZGcrV7gAyx5/gl/MTCigfnOf62lvgLo+kRGBYdP+FjgIkr
hCvO9jZZL8iMlhpQEofd2kuWfM9AfWQluvHCHUZLL2RZWw2437HzIj/SowsG+Tmqjs0Apz76gUFV
/so/IKHPS46ZK3M8wQt8GHbLifMYaqoaVdY6nA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rBPa8gwvGEmAggnUowv+BeHBurzlPxGW6JItOIwzBBbXgtIYybxIU7pYXbjrecEOQo1ZLN4omnEy
+CEpDKhjiPF7vh732NgPMU1ZiL+mdDePQ9zIK5GchPNAgqESKwlpSm8nkmZ0GAWhVcBVJziYsgY7
SY4zFABnpBh8aQvHsfWx/b7wn7xAyOnHgODy/XbiJASb98tR+9UQLw1WA2pTGO9p/iOD9AmJ9+Qo
T/+8CwKS5HxnpZmZnVzO+K9Po8qm7aDMBDhy1hLNakj8oCvVkj7lnT3w4shsSx0gEMO0ZnJvuXDJ
5dFI2ncpOZsFYbbzKTkImafdI06jq+A7XiYYTg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12992)
`pragma protect data_block
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
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
