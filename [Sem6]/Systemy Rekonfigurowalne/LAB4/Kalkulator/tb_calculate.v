`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.03.2019 23:05:34
// Design Name: 
// Module Name: tb_calculate
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module stimulate
( output [7:0]A,
  output [7:0]B,
  output [7:0]C
);
assign A=8'b00010101;
assign B=8'b11001110;
assign C=8'b00100100;
endmodule

module tb_calculate(

    );
    wire CLK;
    wire [7:0]A;
    wire [7:0]B;
    wire [7:0]C;
    wire [8:0]Y;
    
    wire CE=1'b1;
    clock_emulator clock(.CLK(CLK));
    stimulate sim(.A(A),.B(B),.C(C));
    calculate add(.clk(CLK),.ce(1'b1),.A(A),.B(B),.C(C),.y(Y));
    

    
endmodule