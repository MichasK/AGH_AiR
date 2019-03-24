// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sun Mar 24 19:15:52 2019
// Host        : DESKTOP-FB8OT1G running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/michask/7_c/7_c.srcs/sources_1/ip/c_addsub_0/c_addsub_0_sim_netlist.v
// Design      : c_addsub_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_addsub_0,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module c_addsub_0
   (A,
    B,
    CLK,
    CE,
    SCLR,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [17:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [12:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [18:0]S;

  wire [17:0]A;
  wire [12:0]B;
  wire CE;
  wire CLK;
  wire [18:0]S;
  wire SCLR;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_ADD_MODE = "0" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "18" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_CONSTANT = "0" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "0000000000000" *) 
  (* C_B_WIDTH = "13" *) 
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
  (* C_LATENCY = "2" *) 
  (* C_OUT_WIDTH = "19" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_addsub_0_c_addsub_v12_0_12 U0
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
(* C_A_WIDTH = "18" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "0" *) (* C_B_VALUE = "0000000000000" *) 
(* C_B_WIDTH = "13" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "1" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "1" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "1" *) (* C_LATENCY = "2" *) 
(* C_OUT_WIDTH = "19" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "c_addsub_v12_0_12" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module c_addsub_0_c_addsub_v12_0_12
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
  input [17:0]A;
  input [12:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [18:0]S;

  wire \<const0> ;
  wire [17:0]A;
  wire ADD;
  wire [12:0]B;
  wire CE;
  wire CLK;
  wire [18:0]S;
  wire SCLR;
  wire NLW_xst_addsub_C_OUT_UNCONNECTED;

  assign C_OUT = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_ADD_MODE = "0" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "18" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_CONSTANT = "0" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "0000000000000" *) 
  (* C_B_WIDTH = "13" *) 
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
  (* C_LATENCY = "2" *) 
  (* C_OUT_WIDTH = "19" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_addsub_0_c_addsub_v12_0_12_viv xst_addsub
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
FPQpCHIntLO543DeuXHDp1fkGXIsr2SSQQ0h05hCLa5kgpKW9gqNhoEJRoyRv+YYj/MZq48gpFHu
54tuDEEQBpWZIDaHS5UcqgvxKOGZVN3xzUcNfsfeEpObWMHFDX0FzjtmlFoLemAWHgc4C0TkeQV3
hXa6TUovn8+MLbvUZEtK67SsjhvEEUqDgOcMJhLZ8RTGAQfhV3rkOyQ5r++ztfzYxu5w4s6xc+9j
PJ/PgjUPJPyBxJu+MjuqcwZZrTvdICKx01i56Fob7fv2zLSga+T2Tcl150dneloh2WfGs43z0Vab
6oa7a22tyRAENZ0hvp7zlC48HkqlJ8ooMeQ9wQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
HF5UfeBPkixUlQsA1Uf+HX00Z3+GZHFafonOOJ3hNzfHFi/so2EhfMh5zjSF48S9qGxxUBwXEZcO
KeB6Nx7/4nwXY/hR44j8uE97PP7trtZtz2F5LMlUsdpney7IgxV/4azOwvOSMWhLkeg9JDcAJvTz
QV7Vy0ntpMFlntdYo6teJOsZ7YL3ywOKoAmj4ugAgUnW5Xa6M0vBWmMHAZ1wDnRSINawPytxHnLk
0gAwP4xM7QzuU2pXrEYJBb9qwds0k3HN2STXrqUWmGF4MLGtb/xUUt1tjI4SuuBtJmIA34AT6Pa5
KbR+zr2QlzRrb9oyiSdirEfAYRAYII8b5CBFtg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 13120)
`pragma protect data_block
fxkwaHXRiVvB5IYJaimu+XIQGl4HWS7rSdebaKHgnCoObjninSmRYxxnlxsZVdIxp7+wPy4/qqF/
zLd7/00P0R3BWdScGcM0iUYMvZPM4I4zK09eDFMImlOXGbvsElYhjc5ehT6bzfHe3upbNuHRjpBQ
jHVYQDA5VcnV60dSwY7/SVLXdydexp5mUo5MDUihncdcXPPH4UYE04I3RyCMO/OfkZe6Xkpj5MLB
CmEgJGRaMvdpKyjwtAnYz/vGbNx7sTw6P7qIlMLTFR+wtLlU9eksKxLGFAyHUMsvZWH+yiJANbAJ
C0UE6IzeJYqG1OZif/Y58vdky5JfX6N74S2fdwyql38U3sFjqIu1j53fb7MlGZuvh5Ute9lSty/R
BFYK+I0nJJHfGckkxRt2tb2FJzQvM065/JuWn6ImIAvenOYriSlmqy4XmHSJIdm4xf21oW9mecRY
Zq8hdb1zKJOpQfxVdtDxA271Qc6pImXhkB5rlmlUNv+bUjxdPOyrfdt3qP0RXaJVQTyxuIhlZfck
qi0iCtJq8TI4Arw9dQujuIvq3c+OsTlqMYyPulBZK2aCD1p2vPZPfF4SHRh47qrvPz01onx7MfPX
6ds2+S/OFrtdJ3EJyd2rg1+RYopUPKEIsYlh33TwZyHzPTIgmLNjII4CujTK6rtfiENIh02OJD0M
Qi8o1c0i1spW2D5iLP65pbgD0nEatrCD49j7ADdVTf9yt59Y/nXwXLiNUpDVb9s5GrEU9D7D+FJh
idDFKRWhJBzwpqgKFR+2gG63ZABBx5ygeY3wvoyqMd+FdrkSVvHeSDelM+O8bc5k3j53E83eYqwZ
Vsq48FDCgtL1nE8cIoDGkKZRiQ8+H5iRQU89PxP9T9sLmfgqxYzq7TMLZHwMiMe8qnLhqQli/hk6
OLJekbdDD+GxXzyINvPu9DnQqdDhgYtiokt3Wgf9dnbfLtkTn0BnCb9Jsg1BKZ8voCZnN88gkA2/
79KVAsefO0fHev3UZYLg7v6J+nGWi17HmoHJ22unRDai/tDwzpt3uNgfLsCexsGngPoa9q1prhKn
rygOxC4fYUuk31NvlqYAH+b1Y2oZ87o+h1bgwyWszKeEa//6Y/z/+Yo0ynbQVA3SXmQbd2dx7thk
KnUwqOT3nTnscC6H4oirN/Y+jLC5gPyLkpthsDJ4onCIpsXyoxc10x907Qla5XYVwGo/BuIl72MR
o4LfbHODtrC+zESJ4kHeZGKzwKPLYfr5ZOV9bYTOGsp8I3wbBbtLvRvnCfn1rSt2i/j4cxTxLG+3
TKyXoFtG7TPZd4ElP1wPlpX9h6TgEhxOQ4fXS7I2xgPRax0K0eB6OBDO1wRD2X74512XNvmK3Srr
WxVYQhUbvOc4J2OC9jGJF9RzSVxR6PgPENpuEbf0uHaCC6i1GSw+80yNwuTRhW+5cPqMrpF+9AJd
0MBJZlYKVyjlalrf/vhzDlaBBOkdkfWTA0cYrtoJGHs79eGLOtuOwIEWeLcKgKz1wpahddqnpFMb
JKWjaDnHqJ7gpNQIGBVJ259ILhsea19NQ1TpJX2Y4QsfVI+gtx3KFGnf6W2gyzY1XgLQYEzuFGrJ
obvRhoNbJSTLfDIHkY0DxdxsrqO+5Muqco05i3IFeJaXyH33FsdEdaIsVORyFPG378xSW5IXY7IM
zrgq28u/Box1e6Cepf1+PozC1JQEfff36uK7z/AS1yLrprQ03dUl5/nW6UCr4JhxiiDQvheZ5yzt
5cp4yzBRwZKTBDUri7gwNGvUEZfWib9/840jXWqEOi2FKOSdds4s+V/S8lyWLXcy1uQZtrYZxO7x
ReYUwdIqFm3sOPZAyvdcRwLZDAwUbnErgMBHXD8LyouUNwF8x1AT6jbaBLVTjj+fpW+M2PxA6arb
Y2LXbBkc5ZGc0aJbyLPAYnGJOk5qYTDqXC/2A+eTv9Pj2jVToyjK1Xp6qrWZheCVrz5CesC+HepF
yAh1tpuV40scRy5zLI9BieQ/1grqwsA17swhscbh69GOmwsJuRlDeGLTlAQmxCq7kDvmkXVk7OrF
i/KStwKARQ84zQ+DynW2fDpxHm26SOJSmTauk+aM8vjbrt22SRDVS1ak/Gkbp15DlzqoezlOvBtJ
5sGL8PGNufOXztW5GMLy/kUjq1yXTnFdIpXWjnvjdeLKLs/DZ17kfxWO3fZIwYAL5S0/TuF5o2Vc
zrbIpjX0zJLTZ1LgIpXvGR6+3qbm3lGBrwj7kDXaCuPu5THZoDrI9Ix3wdeyFYs+ibc+Vy5eOQLJ
3c6BeMkhjrFgYtFvHM5G90BbFik+1RN/IQpvW1rrH7+9uPhzN/QGKWVojHYZAAHEHBBb6IjeXVPE
+MVEnX8dEYtaUdn6AxjMDHUwh+52YxHbpTvozhgMPv9bHOuC3qREdJcBEdMN4fPAoSamuoDdZn0f
65KS6YEoP/FwmSVBsrJ3esM9ZAunGH+Sq8hvaYAOPgixUpb8pW48AnmTHTcKd7n+EHXAtb7Ntx7K
dcPd6CR7hf4Z+T0Efq3+21UGzz6n7Tv2HOnHcUfQPf8DFN7FStqD/ZyaBHaHLGmAfqaKN3+U932B
ybr8DErIFFeiwKghc9SUpd3/mQ5ewg1yrmBbdGaKMX61gI75DtCxwSt4JDjGuZZ/F7STgAGQX7L1
dU7JQMMb4B7qH+cH2iEj9NvxxWb3l7zWSFN41B7948VGZjnMpeSOvJlRrl/meEmWs3szFYYiAoDw
ErRXB680LR9gDMWt+AXvyCoZdRPCP0wrNXsvR1h55UQFfEBxF44M8LcxsK8Tu5ATLKhSAS7meF8M
z+ulCzwiL+lPZBeEjw1SgZgYG+z6W8hyZMfTuViyAzBlCrsg6Vq68HbbbLTvzPmZQSWSTQK7AIy5
2tBpC2e/QRcKhrNVgdBobC//ioJoJhUizAzeCWXQqz38Zxq8jBaRYPcnIUyjBxP0XhictvbzbTRi
gWFIELYB6Rc1p1Dv34s9tWq7Bwlu3iSGNFM/sTm9xR8SMXr72G78PywdBT2Eys5jewQKKj4KSX0l
PlOEE0gWKlzse0ZzUX+XxUtdJ0yF63MvErwDI+OzHJx6DAaIGthp45JLQckZP2nPM6s1/lx+ow23
CEzC5uC2iT/Mtmq067GNlPQqf8g8xqaxi9/ZGKdp59hUwT1H/hAqW+nTm33aZ6yPYrd16wVv6QS5
rCPxnaEbHVnr8ImoROVnajEVidmE88kb/Q0cOfP1QLJfMCXTO5eOQ0L+yHuhveteXUYxDfp73rtX
IcYiS6REwPPBb28EBwCx8xLClmWn+nyk6jqUlHXEi2e9pp8wRl/iHxNBzsWSsnsveUu+QRqROcgP
aN5TA7p/UQMfCxbLnrhDm2ZlFGwcOBJ60YP2GlBq4Er7HYAOQuyGbpuh55E8JiX7ZuP7DG+SjW+Z
8o6IukT2S/YKJVVobWWKe7iEqWGhHMVLYFsYBXX6LhBGL20gZ9pUoHiBUs6AqpGfdOef46e8x1ES
cQqLEGH6ZMXsi3ALp/7fSw62OA1dNU8JlT3iYf32aORbZ6t9HwcIAm/WhzMDNv4IQNWII1/CLM4S
XIG+M4vnnX2KdCpe0KdUC3IiyJ3ZI2iWAP+cGlaeGRzCilfEAKKtoZy7K13dwFwGJ/2mijVnz2qs
Ben2QggB1Znj+OIWAKvTJRXYwR63KmhU7xVmf/2LMEDzA0PMVlfkHlwZrAXJ57lSCmgCHqomr1eO
O7oH/7mRYVqG0L6QSa7AHzM3kZ0HxdI0c5wrKQQb5ozOkyOGfFDRdjxoetikDM3m8BP1lLFkHTIc
Uj7nQFEpkaDvcmt+Nublcjy5QXyth8TGTWqRpclIxMEqS5cF7dM9u3WSyoey2B0HYkIKN94tKRJy
0Wvyn6b85Ce+lll5E3ePIe9dD+XcFcSgv9X5ad6HnQKa0n6+Sz/aZgIkmSWKakBUHEDMugFMahX0
lOK82q/4sHSUFbiVIesX7T65jEXp3SsmrqmdZKruRqhDj+LeRT778R2y99qOO30Zfuoqj8wtp04l
IQv8G6ltpwjOS+JBvg5Bu9cB5CiygREGlvdnwEhVMKQuhwNu5UW8BQrOJgT+0eJth9+kRLtYbsC8
Sb+xWI5McEFq6URBmDVmxeZ80cPEooirqQST2saRpSMfbU+dpYRv+Ckk+EtZl7n4CLjznAkrsX9W
yyqe0E0b/TLuJYlg0eZxemvO0TRyNjZ/ouhPAIVXWmw7ujf13oLksynREHtdwJuSHJID5ctNU0aU
ZuHW7TdB+6REmFXDYYM/nuBPGHEXv6nAjjYtzBfIldhcu9JIq4mjfXA9KTYtS7fkV7PKV5aUkaRF
pb3eJtM0XmvD6zr+fMdkE3/d+yVRKQwFg7sknjSWIwFMwj6WvKWZVE5EVmkJhek5oVkzkUVWjO2o
3a+b3KYkWoWKFPO/lhmNIrQlnnyOnEYFdgeE5vOAHJmGWUCUFHBFsJrhDtc6T0AWZqxA83o1lNmE
xle4YeTr5M6BbKeGCMqbTR8BPg7fRLf6BBWd4SrDSDKJLQXFHmDzKmLmfYOf2zaqDIs+RAUcsudh
EEPZwwyRXggFsdemJ+jspKNM7jNYrOgtME2Cvw07zryG7BLZHOCa+9Egq/LLet3rR5Fp0fcdEvJc
8s3N3sBx0q8nVMgLBdQaqHRxvZCAztrz2bYfJy+E82vF2eR4C6T7GiJPBkEKEJGsDMRiwBtMSDO9
/7tu5YFp6LCh8DLPRg0zLPCgeR93dCx4QeylNY12zzn/lbeg5Iacqb4KuZfBs8trS/XUO+EYJzxS
Y+9Lj4ax8gVDmusQpwMiiqm4sE4AMcCG0j/sIxY0oGVTlUB/CIC8j8jUpCHAqqAFu/kt309ye91v
QZ+Y4t8ZlEoxi3WQqzONSXTffV/fyyerQmYuDfZTGcqmOiiwnJKU1Cyb1O96sSg4CE0vVm82WCXw
6kmhj9Y1/+xsXcnpuiZOclofaagvphcaC5mRRZF2apZwOLcqRdOydFePGLFiwPi8crYjZxTh1LSX
syyZmb+3aZ3VUfFKQyHksYy5RabxBPP6Sp9w0tm3SV+sJOjy4uoXRFdczkBBwffjN9pSVCd0LL4U
3pfaalO+PTAU/TmJxF2XKPrzckSlpLN6C5HqXWo/PX7tPNAw2fwXZGUUNuGtfUuXv7QF3G13bbfu
PnXXZ73vlwpUxMC/rrSKSAWPqtpxVIJFF5Mo4qsl+YAamQ6NTHITjbEEZkdI00qBOt4JLFtz95Xl
s5kD1CfSfRZTy//dVq6nc95JT6J7d6ijmpnrC05/TCpJlTl2z9ZzeN+SSgwfzmsEK7rV8vTXKG5y
G8jreJL35rRX+6yCISIizcbaAUZNoz28E9XE8GOQsoTXRo06LnKlXAeTAP/2hHhTsVFCK8Hsz3ZZ
ByScyikx99ZkCSie7igzeEGoCAZyvgux7ANaqwWAjKiW+kfk4ijazAWhUNen4LifGdt2Cw7bYToy
j0Bs50peW8Zap9IXF/9AhLXQOhWlexJ7kUDhoRmlmKPspcznJJSqEytyEQelq1+8pQJrdB3dz/kv
GGHn2Clra0WMS5wFeOfjtLCx5p6yvTPXOz7OsxAIjmOdmWy451390V90K70TUDLxA5y8XGRtXNBu
7Ujh2GOEPbjDUWl946BKn3DsIfJJIfPjniw8LGLKIz5XwQIvi7PHcwjc6oiGWPDsP0iEnKzbEypQ
1Oh8vTrF5HQPDBX7+J/F8c53OuLYZxLQz6g/eLcO5GxmYTp+sh18sGqFdinlrJgXt/PUwllyroMC
fJcAPjePWRps5XEtJ8uJ86lxLn69zoxK8RQ5oYdFg8wFJ5NowqGXlB0beHG/Er2SenoN8iXa6UTB
6Giti7gHO9ddT+N8B8zKOirvcBG8oNXAAd7NUPnAL3l/GYYWreK1FvKnVhyVSx1zt93thM4Iv8zB
0jpYdXeHb0GQAAeKbtjfj3GZt0mYDumslorrmF/7WD07+2L9Cc71AmiWoy5T62F6IsKKTCEknKf4
UzUZeWog/CljTsHM7dJ4DSbRy7iVwFdPg1IufXLLM92mcSPxZm+PbT8IJYJWn8oZ4tku/VQdibwM
W/IQgeHMnSVIJqwMAyTh33V9NUwZPHC/kelUphrwPUHnJrc070ZZGRpDq3X7Z0WdO/DwBj+g+F4h
ZpplF9hPdKExru7D+SsV/JOmeTvKer6mbYnB++KTEzMi/gYFQ6Uiuom4ywb2kk/Td572fpfMtFtY
VSDSWm2akNKsSZxwk4F4cPk5ltT/RGrBi5/VPUCZ1yi3P7vtXgEbyKKwoneikwibwv6tuhdW/wyH
cyOlJ3xnWl+SpQ4F5HYSmjPzDGHb4lXbLZoDun5ywxSkakm3pCbm7Mg4g835HOSZTk7ey25XwXFA
c1VwzH1PBHpLtHq4H6l4orq8SugzalFwuTamcOubGrfglC0Z3FF5YWzJN95pZRC7eBfxgvfXDpsu
zoqiMLvq/BqnPvNmu25M/teUTspbeeBtIMQhNdHuTpCaQ4DQAF7re9qw9TLHzHY2GWfdV/rXf3UN
tUEUsGmKoJdNS0BZaJrI9L9kS5hJUcBQatfg0Nl1GXWyH7sQQt0rS6TREZaUBEgpCCedXh1JPD1j
JgH9RZAiwVxXpHews2oAWWvO01wVHCd5KIcRdG6gbpIn/ZHMu10R5o8H3BhcSAAp8YTi1IUiPVEg
/N4oAGIkNnLS6gp2nwI1Sk8vEUtphqNB73iZP0rYOTLG35V3gBonf85FloyW0fQx+JOApp9sfxnm
ZtK8ltc6dwWmiVqMwwkT/gcmYuSymSQ3XyZpOpnnZeua9mB1dJc9rkuAhGRPx5WjAB3sgyi2vy95
1m7jjh6SuwW5rin+2zHElEmOEINPZXKllVCYXXf9t4xeR1y+4Cc1lVb+Ftaz2GCjUOfmrQq+IDSS
wmYvEPOgSTyLW6D0TXKjVRA9di01w5NOPe4DXcbrYcgo/95OTK4BANmWTIgheF3CfcjKECFgQkfR
3tkpsEx9GjpcrVMcDWQqZq0NZFw37qTZZYEQbv4WXibDMEBVd1GBwlbH+JZbQyLswaKvlmbD734e
pK+sQrWrJZQ/ZEDFyNDFfeWhXP51gGotlKv12jfCihSaH2nZ7tbAtOluW4c1zuLg3fOeUTFZa+T5
RlIEPCv/d+rSUFsjEyFoBm+U4BxiNYzjKVock8ELu/uZhoYIEJMFX8DY7wjqnlhvD7ujLGupSXEw
zkX9ecX9yJXlmcHlZv1a+wvkwUNS1DNAIrG9VMVz9aytbzE3tZAVTeOpsSWfnEAsDHlUe/D/USTe
y4xmEUbHzr2n8GBWd8JwS4ICTqw8TcJFrasgHh3Q/ZpwjuFWxl6pEFpZZI6Y5WhJNHBYiWR4Zzk3
HfV7ezKAvFoWjPOlWHSGH1vu6qVswt3eX4NxyS7lhZlSJO3B5OvYfdsbxjgzPYrViol19EDUvbAG
6+5LBgECNf2kg018Rpuc+X89TSJbgahQxgcV5no87J20GtIRCtUSvSN4bOPLJBiOWugvCkJelLjb
PqTF5ZbzF0oMB957zvsePkCy7vErqU6fxzbHaXJmsLazxbd3Qn6LfMTia0vcQCxgBMVxy6Nw8GyS
IWCIPGhyM6aBiAfWuzX1g68kV39llIxIIF+oYgZTETewDySicDeWwKekBcO2UocSdNu6JUmZLYm5
NpknP3OA+l9H2tXrK1S+Z561HVPg/S4vhGw0Qz0bZyX0ZvqHeyQQz/vdncsVa675d2u8acJG91ds
kVqZqexyQcwNaMwLZahjF+LTVtMnziW+6VzJCj/KPavhffshD6bTKeThvXQEhuuLPoBTvfXd7pzN
I3AkOCO80XU9Bfj2fjGi3stfvxmT4oh09v8viKcMAO5So7eHF+CBkY4OMHQgOVb84+1G3kWcsiSj
6P+xssx0vtYZ+okB6ZIN030AR+GTkFbndosNyca0TDKEyAdykw3wLfdPRRzOD1UpC8UIdhZKOYKz
0NyU2PNdd4tRFkiDbMzI7XIncJwxXbNCXTfv80xv5ZS0pD/r4s+wiRyUH6ordKOyGVE3wWBtOPMp
fDf5FyTySoKr4OWr0p61KoQdSqsIRP+jG+Y8QsASpSYGl82OMjXg+Eh3yR7/Z62Kv/CESmXB/NvU
kfBJxtgE+9NG1ot4TnUhP7IYTAMrFmSqN6JycPVrZ2vffIdlI0KKPtf+T0+gyEpa6I1L8NGhVExk
47m+AErXRtfx+fTziQZu3/w3fXVdfyouVfETkjOnknEGcgZbShFB/e1j1iAyXN9dX9hya9WKpkYz
PKSXyjWEhCjd3bONEWD29DsMp0PjKcnSDKFb41HrQZz1lE8g8j7vFsBG+5jDl5Aj6xOc0KBk8R8r
i8ivmPE8gsqMZoBuKaXLJdp/1Ol2XQvp/LuR7LAa646i57prXASIMWQePY0bZ9Hgqrs8toY/M1yb
txf29pDtBZuX+wQm4+flynQdy0UgBimQWZZN6wetZcN4rhQ87JBuJxsBQ5auZmjLcMFcsMEikmFc
/Kem5km5QXoAcIxUPsWxinZFLKK8SbG1yawDaEbsYqiB2LmYYTEBrLDIJ9APi05BO4LP9N/yQ1I4
CERcovrGf+wvEdL5Xo0RpXlUZglRtvTzm/kotIM+mrJXwtFDFFOJ/MN7s1FCzQ7iYt442PSnmA9P
jgZcycjKZ6dZJN73osAW7Mq5Zy48K+sQ3Q/ZeGJnvs6is8uoP9cyNwvMYE/h2Ss4z2Pq6P0DFWeq
giCrMHNIs+uFo/IDOlL3aeyWSjD4QUBkac5kfps3jvYYLA798SiuPpzdiaKYGhqWkTZn5YpHAvbR
RK9T10wB7HnnWVduj6+KTY4eHegh1EKZsfp0V/irHooVa1v8RDUZ2qV5Nd+5MKSzpdNL/Isifie0
n9a08ap7y0Nz4f6oA2ef2V9JNZN/L7QMhzNcQfaZ6Q/FkzL3GB0/UtFAzA8aVRTVMV31mrwW3mv8
iMc5hW+rxomr5Xlmzt2t1C8+tfPw9q1QD+E7zAJouGTushD5ep4DRpOyV1xhwiK7v92x9stxw1bx
2dKCGvuf55hKkQA0uQ6Okj9zQFKg7yxNNrioquYibZCx4UTQ0Jx661NyPXzgtC764mZ1wbSdNqs3
HSzmsHzziZUvVmeozncMb5XhGLn3DgBeR6mxoLI6VciV0LKoelx12OWv6O3/BuudYX7dqXW+aAjS
UrwtjYP7FeFa+TxdL8Ich2npxUf5VS/IUqZcUVXgRpdej5oMKq4DbcoU20s9GPJttMrSkl7M1JQV
W0Qjm5nNmwADs2dRddLekwCLisRwD7qaG1pQLO3HwEr76WC7j4X3CXNyipzLaVgXQGoagQHZwI7I
6gp483EseQparqpJMO15EUVsaQSPfNjstXMVTnqaEcLk1h0iQH5zhLK9WavXck3hKUIbDaSTS+q7
tmqsIuugWr0t1jo7wSo+vdN2rup174JAFm+cEYMxWm/40/hLafmF0OMCUm7jfR0383DkwapKSamy
F5C/6sCHGaHbYy1jeUb+TMQIfDMAqnqx5590mrOoSF5rCDBx67X3mhyISkhKPK2bdzAmt2dUVXFZ
c7Rap258CkFPaEzH6LzF3PZxuSuR6nfK4chXIIo9XIRfuvtdrDT8zzDlCX6HgO4WaEWfEl2FZNAd
S+MNaxBN4K5dkywnLzBiR1AB6LeAGX3PbpQTJvuZgycRrfjSpDIE2V2kXdLM8YeGdl3btczxStSc
yYiptIrNKP45mtzVVms7QbumcbSwY9EuV89wQExfD9ei/bfBDSvS6yl8lzpty2W1Vqnwgz0MZIcS
IlTVxArdkx6uRVx/aXfpnn8y5KvjQPJ24t+9Al3njE4s99F2vEKtfL14k0ZKY6OMj8IDPP65H88/
CmEVoCIU05kgHmpIQaG/bzBsxltl2f2tie8AtH0ZE22fqYKu+m7OuEyPw7kdxDqt5fbC4MfWSBGN
miiQ2oco3cwd/4SOEagvaDkHhcLMLx7eUJWoHSweUdWO7XDUWhEWhuaspY7+sGK/NXIlAuw4tK9Y
uJidlkKWQWKF422XMT80kFCIuqx640bEei75fAjAXnp31jBgQC5d+rSztbywxHiHb28gunrDLfwT
JqUM9oNcb3V6BAUJbtLZqkmfn5C+5ZVEChWuimMwOgB8c87FD5x4EPkS/daQc7krgMnK16fJmdHs
/6lPIoIcuFItGkZJCaOxV2GaEFtVvUdu8wZxrvlxtZ8UtliPlTahsNN6oFpO8nqSjcJfFoyAFWmH
Cyu/QrfBhu0dks4lUj8NBTi+YcGAefy4grP3TeWtA8aMKjCREvjY3FJpHD4ixW/cECG9FZgmGmZa
y/NLI8HXvFDsXYvvL9lXUm3qTQoPg85PYREPCJD3uv83BDdnnhj70vWV+REokuOqYGw9NNc+3ag5
JoTzWs4XPfz3uCYy9h4+aDHBG6ZCXONB5LTEwSRHA1c/gHU4ZgGdRCq66PNROlxKmy9w7K0vp1OB
2Xo+mec+Wu4r8rSCKV7O6WHogMZIUAp1xUWIyfwsz+TRV2QDzXa88NAtlNqrJ/NQ01KBL+KGT16l
RSU1+vxM7u7Kf8qEfN3iwt4T0PnIYOP7s2H97fdiZ0fznHVJtFsQ9INaZVUiooUpYkJmsEDeUEXA
OEavSfSmByAIG+9rR9uO5+H/S87gQxv8u04j0PwpAN0+E5HLR+U52r3YoF1oSxNik9mC7OsYKtO8
WmuSGUVrCI++h1gsGT023io54b3pr054CGz31fFNOw23F+lRqtfg1KW/wauuQMyOdj7pMsSZkK+E
y6+axzSxqBZUW45QL/bCWeeAp1ZDz0LrXhiPP7jgOv0clN3hMu3HYDdVRQlx2XOvlso6S4zZxX/g
mnTOPtu9P9wbb4MHxqFZnKSkNB+xiMMRGf33lVcJZmCsMleai4IkJzLd2OT0gCAE2lKe5SM5i1h9
dCwGAfWoFRJT8wDpzCt1Ut99nFncWJWvlrbTScn90+axmAdWfw9i+Q0lwMvo2FCXhaELEwZmDua2
jx4b5plNrsl6N/BEj6wlawapQmgzLKENsvLSTkAscWyAKd18Tb8YRS0xYQeeAL8r7e/1hkBv0Ryk
193e/GRmnmmZGUwZq7R3ldwSlxrFJghanITaeQ1az+48LezfK9hjW6qdT1QPAglIdoOKRt4oneX+
iLUA38pbzbtBAKFdYl55FJ2/yjGu3TaT5bRT5GZKIDitCC1KRBILkMn1zLW9jWppvVo/lSSE6D6V
vMtqeNI0YAmH3Zc2RWkoarSp9zJ6CcJf/rCrrYH1ZvY7+F5Rt5dLM9OwSxj7CbHDnCPSZp5/11qI
TQXiH7AylMQXBxe5yEPqoRaIyv5Tui99TDJc3rdX/v+RnlK8S9PkVp3ZV/v0mg0O6lpv8zVdNIJ+
L82OSosykZSNUA1I31XI77ltbY883ow24CpqTyZyGGFwOqMSHH41HGKlW68C5UPC7B4yLwnM0yMM
SRkSJsxseKcQ7dxu4bi1sWXMa+MN70o+Rbov0ojmFq7XDShb5ABSnOAd1QSd/WSJn4YQbcvvc7yC
KfpUyRvNzapuQOzRKwdPDXk9ZGs3bSU4u597tVgS2266mSrr/2ghZAP7UCbAKaIK4ivTTZWa852e
kbbugRua1ZJGT0mlyU62UymAyy997R7CPwLMLVQ9Jl29c6YYRz9LU2WHqT2S7VFFQpMFW+f4QzXS
Q1AgWIODhqpaMQycHQuXLNIEdMqjzVJ6Zl8fOUtoSO3FCe5WpYH+DwJLgNUbBlzsY9sCunHSU63q
8jvD37zozZ7XSrhfGkHYcbq/5HQ4WsTXYuA9dkDgxEGFP5T8T8R8hTdbSPZCh4DBhMUVd0jDrYAl
MLRLMHeKM9hAW3LkQjsXvhhYtOX7TNWvE1T+aXL4VhSyd/W9oV3G8gSsRlf6COuJocTg6KKIZbpm
Hz8dw7kz6I4XoVd+rUxe8V+MgGxDu+b4bhq09RF/BzwLj97oeo6gAnR9EzsxLJR8gOV1ny1lA1wU
g3vEp/BWHlR/16iFGsJdo1fB52BXcGCPAt5XzDJtPzW8YZz9TIW3hXHl7akd3kgOcmIuKvps4YWQ
oG5S7j8GEcDmY8VqCv8YCFrSY//qNCyCJ1RuMIz/+ABox9tvZjOhmj1j2DPSrfeUR5otu+tfRDs2
IG9Jx6T1CAcTse4exUTQk2VsetsOq3Lbp2rT0yBX+i9D/TsCt9jOFQFxNBJZmLPDWz0lQCHojuIf
03uBsxiHr6r+3nAiJhpKAn9h5de6vVpgu6/+eqQglf0t2XFLQdO1l/LllHYJGSUx1BkkWzrbfBbm
BivpYRGu1uyixJd1yFAq2w0/3c/AvvAnkOhesmATZ0eNdG2+N+NiH7rOcHec7Vn/YJMMvuoEXs0I
qQCKVKe/YjV88sX/j7K7+w4eZZxYfhkIIqsJHlIcEOCkY80THQ4MsZez0bK2aXd6lgQPQQSbKU6L
QO3SSyMV2FmApCGPXs0sUyAycq1AuPYLiLRgYJpKkfG8KKc4VNmE+7LmjZGnTOLRvQ+Gv6c62gSY
Tow4sSslLjVrw15WRZhCkBVP7oYDZTsT6faAxm7me6auQ9wBnd64Xupdo0btaBg5vEMOBXo3uihS
ZaWDIgoGRWjvbT3AGClhUecedWpwC2jVs7L9Rz+4YVYFq4UL9l07+ukTTcKMQhY5+TXrT0IWETJG
yMtup229Ayq/wIP5WZOyI/gCRmTQIG5G9WPC0gI4HE0PS0pvF/pivZPPPWhOETurqnTEPE/H8n/c
81B8duFdTxReX6BqWEY8zWf/kIp/gEqUWaAVLM6MRj92rztkTcQr6NHO3lxppmPVLCNkW/394VAK
DekALyrGi7IDYr34ZWstSG4fK5CZzzrv91ROPRyOTjm1pTwlJ/jQJciHPc9HWIj8Sz8Vq3eHZFPR
qi05UT8wCMgm9DehF477ZfSZp8XKitu1m99TIv0to7k/usd8QD+y3+hpLKJDMwtUsI2Fm7c1dLXL
SHvT5VIeSRqEsaWekoRDg5BdXR3oe3GkmJMhk5i/qXT/kYQQQZvCPNogY41k7hT9p1JLBbHeGcDB
xrkIT/pzinhcyaaSZigKUdJ92NIw52lL7nkH7oxB2UQEJvbQCWhEVKRhblI8LhsO8n2lLe6hStxc
/vYOJThqxZgo6uY952KKVDbx0HujE7FeKaREtOkuTGpxOoxwPyDJ7+4wSdvaeDrpJMV7i3lfkdxr
UieTDQ2O3Pg6ebcyyqFgfY2SAU+hZ7MBBcD0HWPdQ967l/79Q0IH58ybI6WnioOMnFTfEBKuHeT4
7wrd3oh1bYtER0vwFMj9MddpVpBMFJyWCNHO8Vi74qy4mJ6wKzyNoU2SPkwSsvHstfFTXjOQT4Te
clUBaxz5M/1smFWCo5rpHWuIrbmWjzsRQ9IrmQEhUyFLlpfHumFeVtTVdll7P3yYn9YxTSvKxnle
G6Hn5zoWbeDgwvEXfxuUi+CR5moESEFVYolPXZGE8yL/IZTrGmEpYyEmuwqSyJpHTyR8BUZqrP3G
pRAPCbITnTXntphK2Be3ZWJQRGPNnxYBEKCQ3Zh8uHizP/jqewcUetb0hrDf2twvGYL8jQKtHxYL
WQRcRSscdBtvLtNvgGuvJ1UObRm7j1YSvpQlvASCgd4TETWGjN12kAPmHuWohxt7dXP/qr2Zjxxj
/RaLCD7ELJjWm64CYT9tvgYsbzK/o3wZMHUltXYeZWavgrjnUtNVLqguZjCqCPjMxgD4v43HH31i
Ebisv2PC9ClEPbdZSBB6WdkrmlAy8rnSEuxnWeeCjgubVXcYHdfrMjEBLuQBYMLj1pY8ofvmVMNT
AUuko3wAQqRsqTqgr4p4xOczeuILVUUsRTyGjGtEfRvYrFStycj2RMDIuhiVz7qdIrYbn/DYAL5f
kn0iN5z6I/zZ71xitbGr6XuRnm4oHdd64AFVMYhOHU0pauoWrCE/KhUms4bE8J+oGaW4TCY3hrMC
6MxrzTJJMz/O9uUQuPBSBSqcTsbrpVC+JJwAXvHAPC8zwGk9lazwnbt+bqVoAHTlJEMPsjMD1saD
WjBr9HLcnmjO3/X5DLhXsxP3AUQpLym83IuwF5sDQgF0oigB2eg7UL/odMbji0BK5dnngTOYRPXl
v3XdJsVITCB+jnKzXrJlGcuvH5knGMMxxRVQHfZg6N4pBNqsP5HdcSaLYufp+fXvjBE0real0VLf
CEmr3DGWHc36pbKqbLjJVod8/i6wpA9iJ0TWZk1DzF3XQdHugPKUBl+pGfHeJoEqyrU/JnmrXSEk
lZRnVPwfKbeEQ9Pk6qDr/jqQP8AI3NXZvmHEOASoLAtAs5YkZJSQDaWFoFNAn6O8mjINERdVmOCM
kyx3ZP6tLtmAMNE4qMkcH313dVnVkZBFSbQKBAKMAX9C86iZq0bd8UUnn4QqfRMom1xvRGU6QzOQ
zIKFTyWU3yy/Pmma9UvmiSXfnvB9GurXtg2/HUxCpo8qTunpDDe/YHcEodFuaI+NPfu8ec1M3VlK
DpcDmBgA2yuv3E9Cj7jR4ahPV6JHAszWX5606gFCwY6TFdZoFlYq5xfQagphmcTooNFiG08XUx0E
iFHCP4Xg59AADrFwknVnuerlkIog1oI8NeLd8OCb/uR460oQueizGLIwGYz0+EmIMJgetbYxNGM5
/vGcbdKl13vnV0y26p87GsgoSdlD8f7m9DP/Pb+YJaz7o685JIwSw4aJqZLreePTKrijNqZLNQl6
AJL97LuYcqLPdh1znuhYO9ojyJMnOGJM/Y/8xhxlCHNqyeM6SGI8AYQOF5oQsteJn8g+x+wZuHD3
DdXySUZMtYc7GOUvyHaq6DmUE8jTyLdie02uHsdJvQGVYMrFxvzLddPOM2iikjfZclU9VWyTTDhy
bPvc9bLAVZ3152YuyeJZA6SIwHknPDhJzypVrgemg3TUSEaqnhRfgVSRpefeySXn2cqqWjc+3qLe
X5egEAOydMbSTCRRm9DdqrxtVCmCBcZbfD2Lr3m72thigwv+fOsie/BgY45MvBy2OqtspN3lutyY
uMLhBULM0QFw1dJtVtgsH3K/LXxOZ1uIlDo4lqINPXpOBUgoJywYhjiG0VtczCspKsrWivqIej+k
tsOJ8ep5DFss5Yo3S0ko8KPHcTBmnWqkA/rUvUk+qk8PPbm6G9+D1vGUtEZzWe1E0THLj8ENZlww
MagT9UUydmVQnCs6hPFREY90cGhBv+e/cmItI4LjSglbHqaUxVUFdLNXXD7+xEtyqms1ACi6qOGC
BZTiLvZ0LzoUEDPCZz1dANyuIvCsGcdI2YpTWjDR2L2deyAW05Ay4cv9GAXyXUbcR6AhUt19qUud
o4SbGreUepKZrrPxUmRZ2Mob4UtXnXWrZE6IZYvPQbwjauDiYZ4b6Smi5Rnb/RjJysWMgvx3gBgl
ttMw6B4UkpW7R/glc7ZqyWg4uk3kebPw12geqE36ZNGYOEudFNzMYbg0NkCvz+FmEXkiNvzWfyS+
mL61oy/yZADWqFUG4cPZhb6mwxgAagGPseHySYW8aj97VSYvGQDCw3kyleXW9UyTmeLaGLKflXDB
AvKIosetqKll/QrY3osYsuGIPkgT7+DrNVI08fQD/mbgrLChhVEV+/Z5BDYxcU27q76nQWgV5gjh
2O1LyvPP2anSwpkDgfPtNquccqQWBxNW45lhPKG4Zo4QdeoZNvIZTRUOTpGqrwAlcTnMug1+AErH
c1GI04PB6goSBCPvpZFWRYSB60eVv8c+kHfMRHaci8RpGy8AzST5pVaTlWdlvMERjx90Ewe4sa8+
tNNtY/783nsi/kblsqMUBbRqjlGOci5r0RDqy7QYohvlIuou3gQcxtZIbG1UV+YC5PCCH2VNPFpq
QD7ZNMw5tJWuZl9490pnS3bJRTGX+5a1Bvr7lDEZLbFOX/H6NiyiaVBCeHjDvZoSaVmwO+qp+Iu7
8mWkOZLglvP/TTc7ESc35fPMApnPV7e+l2jDU9s8CdEYwFEO+c4CDlPmHllDjP7SgGAKVJhMwE8P
slw2ouVRNhUa92DVeelV/Me+BRSxr7xqblG+BCoPRY06+/Y5dlosEFdT6KqW/MNXdB4HpZtgj/Kk
ZTwISkgKbAFvK9LUybviKOnMU4vtulDFURvaTKlB4Yq4lyTJEvvPCu5SdXz9LI7PrAcGbtg2gESd
LioqjRCXy80mshGodaGp42Afp8GA2E7o2pq4N/6ssTUmfDP6C1Xn9exsSUKI1c8Nnm2zUTgz7Lgg
yd+cEzz31wOibHsdXgYHXGqpLFq4IOjTzdfm1uzclBZWn0zU48Kv+eoPbWDL3+ZUA88aBNbayFjm
PYCSfOl0xmBy7mgfGuml3e8REetKQlDxp8NsDxzGoCp5YzVdbDa9eiqDcVW/j83wKbR2rfvlby1r
khiOahlWpISWxI0t3EO6WRgO3qredJr25i3hGcpCDpQeXm2WUcUoIOq7+oKJlFCa36+udPTbOf8H
pjgEsIM+/pdP7n3zRyVnW+mdMxOwVyyCdz8XAj4+jW2gajG4SJiw9GW5ggn8D3Sk8QaL5xcf0zeO
wsAqP0HykmisGtmC42JgXBI+D+zRprb9tsgjT8u1vvckggjGcP/u6JtqyDYsLwUZbeeCyYbUeWOy
1CieCbh0pKM8qP1Ig/7D1bS43KbjQCy/EDdRum/9ZS69KghExvTue3ZoH5W70kUfte3BKQwbt0vY
83w5QUc67Y77A0OmjZ8RX3x9K57ME2Zczj/uvF/anABjwK2VHHDWC0lFbBjrOSsGlJR4dMl8XQs6
M3IwXBinFLry7GoZFKJpIl1MFvBL+71I/dRV1RGV/o9GlJgwGrrbt1sw0purhywTlXSeahekSvyP
3VVVbrcrTgF3vJ/1t0KGEU5s1qR7LcpQSi9pTlMjJfLgEupC4QXMPPirwrpHYHDxQ0JgbXHREk03
1mNb/gh2AgzeJ60zAlYeBP0q6njTnrttwd3eDneAXyWxv2pmQsTz8qq+L0eXYx7Q++Y+plFWeAN6
RvuF0bKVD6LeVuB8/xtXH03c0DiviHVJiUc4k/YXdIQSRjm67I6NwE2PvQHfCvKx63d9NFqXc6/D
xzaM4Qw96bmW2ekt/5d4jn1LyRwV3rpl/OT4XkHvTohQSCDJAANw3pyoz9Tr6rpjNU3jwx4P+YGz
RNFH7qzhCMA/3Hto4cb4nxYnPsh4D3gb20QBL+3acBZMPIp60Cl6UDV9YhJ63ueEAjH4fnyoz2lg
fL5HNAMf3oSA8fYQHxlPx/3jl7NskhHKRudusEhkNCT4w1DqyM9/f7Od/VOnoNp7y2ncMP50cH68
+KicHqaf5z8KV4/SUGGV7CUomUoLHXnmhkdrktVVc0X3jKK247/71Cb5b2VMKwyXpqtYYKWyN94C
Agb1EcceYk9qrtJrkFI63Y9UpgvnWKIasIXCM45AJxB2oEe7RSi0aPSuDrImv/RDyeJJBMymEAwB
wV4Uw3C1Fvv+Ww==
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
