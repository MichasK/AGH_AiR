`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/16/2019 03:28:11 PM
// Design Name: 
// Module Name: tb_or_gate
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

//bity 4,5,7,8 s? tak jakby nie pod??czone do wynikowego sygna?u - nie wp?ywaj? na wynik
module tb_or_gate();
reg [9:0] test_input=10'd0;
reg [3:0] i=4'd0;
wire test_out;
reg correct_answer;
integer log_file;

or_gate mod(.i(test_input), .o(test_out));
initial
begin
    log_file=$fopen("C:/Users/michask/or_gate/log.txt","wb");
    #1;$fwrite(log_file,"Bledne sekwencje \n");
    for(test_input=0; test_input<1023; test_input=test_input+1)
    begin
        correct_answer = 1'd0;
        for (i=0;i<9;i=i+1)
        begin
            correct_answer = correct_answer || test_input[i];
        end
        if(correct_answer != test_out)
        begin
            #2;$fwrite(log_file,"%b (%d) \n",test_input,test_input);
        end
        #1;
    end
    $fclose(log_file);
end
endmodule
