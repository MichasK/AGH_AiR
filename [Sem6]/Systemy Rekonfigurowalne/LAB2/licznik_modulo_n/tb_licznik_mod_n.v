`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.03.2019 20:46:51
// Design Name: 
// Module Name: tb_licznik_mod_n
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
module clock_emulator(
    output CLK
    );
    reg clk=1'b0;
    initial
    begin
    while(1)
    begin
        #100; clk=~clk;
    end
    end
    assign CLK=clk;
endmodule


module tb_licznik_mod_n#
(
    parameter N_tb=4,
    parameter WIDTH_tb = $clog2(N_tb)
)
(       
        
    );
    wire CLK;
    wire CE;
    wire RST;
    wire [WIDTH_tb:0]y;
    wire [4:0]y_second;
    clock_emulator clk(
        .CLK(CLK)
    );
    assign CE=1'b1;
    assign RST=1'b1;
    //licznik modulo 4
    licznik_mod_n #(
    .N(N_tb)
    )
    do_job
    (
        .CLK(CLK),
        .RST(RST),
        .CE(CE),
        .y(y)
        
    );
    //licznik modulo 10
    licznik_mod_n #(
    .N(10)
    )
    do_job_ten
    (
        .CLK(CLK),
        .RST(RST),
        .CE(CE),
        .y(y_second)
        
    );
    
endmodule
