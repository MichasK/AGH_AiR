`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.03.2019 21:28:13
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



module save_file
(input c);
integer file;
reg [8:0]i;
wire [7:0]data={7'b0,c};

initial
begin
    file=$fopen("C:/Users/michask/project_usart/uart_out_VIVADO.txt","wb");
    for(i=0;i<192;i=i+1)
    begin
    #2;
    $fwrite(file,"%d",data);
    end
    $fclose(file);
    end
endmodule
    
