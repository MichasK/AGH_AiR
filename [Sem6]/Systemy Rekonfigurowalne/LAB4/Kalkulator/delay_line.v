`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.03.2019 23:29:31
// Design Name: 
// Module Name: delay_line
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
module param_register#(
    parameter N=8
)
(
    input clk,
    input ce,
    input [N-1:0]idata,
    output [N-1:0]odata  
);
reg [N-1:0] val = 8'd0;
always @(posedge clk)
begin
    if(ce) val<=idata;
    else val<=val;
end
assign odata=val;
endmodule


module delay_line#
(
 parameter N=10,
 parameter DELAY = 0
)
(   
    input clk,
    input [N-1:0]idata,
    output [N-1:0]odata
    );
    wire [N-1:0] tdata[DELAY:0];
    assign tdata[0]=idata;
    assign odata=tdata[DELAY];    
    
    genvar i;
    generate
    for(i=0;i<DELAY;i=i+1)
    begin
    
    param_register register_i
    (
       .clk(clk),
       .ce(1'b1),
       .idata(tdata[i]),
       .odata(tdata[i+1])        
    );
    end
    endgenerate
    
endmodule

