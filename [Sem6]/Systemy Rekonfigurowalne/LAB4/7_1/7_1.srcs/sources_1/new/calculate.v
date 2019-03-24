`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.03.2019 21:11:04
// Design Name: 
// Module Name: calculate
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
// sign (1)  2c 6u = 9

module calculate(
        input clk,
        input ce,
        input rst,
        input [7:0]A,
        input [7:0]B,
        input [7:0]C,
        output [16:0]y
    );
    wire signed [8:0]add_output;
    wire signed [7:0]c_delay;
    wire signed [16:0]result;
    c_addsub_0 add(
        .A(A),
        .B(B),
        .CLK(clk),
        .CE(ce),
        .SCLR(rst),
        .S(add_output)
    );
    delay_line #(
    .DELAY(2),
    .N(8)
    )do_job_one_delay
    (
    .clk(clk),
    .idata(C[7:0]),
    .odata(c_delay[7:0])    
    );
    mult_gen_0 mul(
        .CLK(clk),
        .A(add_output),
        .B(C),
        .CE(ce),
        .SCLR(rst),
        .P(result)
        
    );

    assign y=result;
endmodule
