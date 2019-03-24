`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.03.2019 19:05:54
// Design Name: 
// Module Name: complex_module
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


module complex_module(
        input clk,
        input ce,
        input [17:0]A,
        input [7:0]B,
        input [11:0]C,
        input [7:0]D,
        input [13:0]E,
        input [18:0]F,
        output [36:0]Y
    );
    wire signed [18:0]a_plus_b;
    wire signed [14:0]d_plus_e;
    wire signed [19:0]e_plus_f;   
    wire signed [11:0]c_delay;
    wire signed [30:0]left_product_result;
    wire signed [38:0]right_product_result;
    wire signed [36:0]result_wire;
    wire signed [34:0]right_fork;
    c_addsub_0 a_b_sum(
        .A(A),
        .B({B,5'b0}),
        .CLK(clk),
        .CE(ce),
        .SCLR(1'b0),
        .S(a_plus_b)
);
    delay_line #(
    .DELAY(2),
    .N(12)
    )do_job_one_delay
    (
    .clk(clk),
    .idata(C),
    .odata(c_delay)    
);
    //2
    c_addsub_1 d_sum_e(
        .A({D,3'b0}),
        .B({E}),
        .CLK(clk),
        .CE(ce),
        .S(d_plus_e)       
    );
    //2
    c_addsub_2 e_sum_f(
        .A({E,4'b0}),
        .B(F),
        .CLK(clk),
        .CE(ce),
        .S(e_plus_f)
    );
    mult_gen_1 right_mul(
        .CLK(clk),
        .A(d_plus_e),
        .B(e_plus_f),
        .P(right_fork)
    );
    mult_gen_0 left_mul(
    .CLK(clk),
    .A(a_plus_b),
    .B(c_delay),
    .P(left_product_result)
    );
    c_addsub_3 result(
    .A(left_product_result),
        .B({right_fork,1'b0}),
        .CLK(clk),
        .CE(ce),
        .S(result_wire)
    );
 assign Y=result_wire;

endmodule
