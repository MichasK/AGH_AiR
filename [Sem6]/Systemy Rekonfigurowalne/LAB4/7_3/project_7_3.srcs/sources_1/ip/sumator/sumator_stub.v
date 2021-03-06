// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sun Mar 24 17:54:09 2019
// Host        : DESKTOP-FB8OT1G running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/michask/project_7_3/project_7_3.srcs/sources_1/ip/sumator/sumator_stub.v
// Design      : sumator
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "c_addsub_v12_0_12,Vivado 2018.3" *)
module sumator(A, B, CLK, CE, SCLR, S)
/* synthesis syn_black_box black_box_pad_pin="A[12:0],B[20:0],CLK,CE,SCLR,S[20:0]" */;
  input [12:0]A;
  input [20:0]B;
  input CLK;
  input CE;
  input SCLR;
  output [20:0]S;
endmodule
