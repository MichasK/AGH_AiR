`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2019 00:15:07
// Design Name: 
// Module Name: load_file
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
module load_file(
    output send,
    output [7:0]data
);
integer file;
reg [7:0]data_reg;
reg send_reg=1'd1;
reg [8:0]i;

initial
begin
    file=$fopen("C:/Users/michask/project_usart/uart_in.txt","rb");
    for(i=0;i<16;i=i+1)
    begin
        data_reg=$fgetc(file);
        send_reg<=1'd1;        
        #2;
        send_reg<=1'd0;
        #22;
    end
    $fclose(file);     
    end
assign data=data_reg;
assign send=send_reg;
endmodule