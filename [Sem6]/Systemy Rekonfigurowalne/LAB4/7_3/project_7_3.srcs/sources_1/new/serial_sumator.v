`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.03.2019 17:12:01
// Design Name: 
// Module Name: serial_sumator
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


module serial_sumator(
        input clk,
        input rst,
        input ce,
        input [12:0]A,
        output [20:0]Y
    );
    wire [20:0]sum_result;
    
        sumator serial(
            .A(A),
            .B(sum_result),
            .CE(ce),
            .CLK(clk),
            .S(sum_result),
            .SCLR(rst)
        );
    assign Y=sum_result;
endmodule
