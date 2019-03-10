`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.03.2019 20:22:23
// Design Name: 
// Module Name: tb_usart_simple
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


module tb_usart_simple(

    );
    wire send;
    wire [7:0]data;
    wire txd;
    wire rst=1'b0;
    wire clk;
    clock clk_inst(.CLK(clk));
    load_file sim(.send(send),.data(data[7:0]));    
    usart do_job(.clk(clk),.rst(rst),.send(send),.data(data[7:0]),.txd(txd));
    save_file do_great_job(.c(txd));
    
endmodule
