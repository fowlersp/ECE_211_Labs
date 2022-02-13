`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2021 08:01:48 AM
// Design Name: 
// Module Name: count_3bit_tb
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


module count_3bit_tb;
    
     logic clk, rst; 
 logic [2:0] q;

// instantiate DUV
count_3bit DUV ( .clk, .rst, .q );

//	generate clock
 parameter CLK_PD = 10;
always begin
clk = 1'b0; #(CLK_PD/2); 
clk = 1'b1; #(CLK_PD/2);
end
// sequence input stimulus
 initial begin
rst = 1;	// reset the counter
@(posedge clk) #1; // wait till first clock edge +1
 rst = 0;
#(CLK_PD*10); // let it run for 5 clock cycles 
rst = 1'b1;	//reset it again
@(posedge clk) #1;	// wait till next clock edge +1
 rst = 1'b0;
@(posedge clk) #1;	// wait till next clock edge +1
$stop; end
endmodule
