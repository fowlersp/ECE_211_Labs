`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2021 09:51:33 PM
// Design Name: 
// Module Name: heart_rate_top_tb
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


module heart_rate_top_tb;
   logic clk, rst, pulse;
   logic [3:0] thousands, hundreds, tens, ones;

   heart_rate_top DUV( .clk, .rst, .pulse, .thousands, .hundreds, .tens, .ones);
   
   parameter CLK_PD = 5;
   
   always begin
      clk = 1'b0; #(CLK_PD/2);
      clk = 1'b1; #(CLK_PD/2);
   end
   
   initial begin   
      pulse = 0; rst = 1;   #5
      pulse = 0; rst = 0;   #1
      pulse = 1; rst = 0;   #1
      pulse = 0; rst = 0;   #1
      pulse = 1; rst = 0;   #1
      pulse = 0; rst = 0;   #1
      pulse = 1; rst = 0;   #1
      pulse = 0; rst = 0;   #1
      pulse = 1; rst = 0;   #1
      pulse = 0; rst = 0;   #1
      pulse = 1; rst = 0;   #1
      pulse = 0; rst = 0;   #1
      pulse = 1; rst = 0;   #1
      pulse = 0; rst = 0;   #1
      pulse = 1; rst = 0;   #1
      pulse = 0; rst = 0;   #1
      pulse = 1; rst = 0;   #1
      pulse = 0; rst = 0;   #1
      pulse = 1; rst = 0;   #1
      pulse = 0; rst = 0;   #1
      pulse = 1; rst = 0;   #1
      pulse = 0; rst = 0;   #1
      pulse = 1; rst = 0;   #1
      pulse = 0; rst = 0;   #1
      pulse = 1; rst = 0;   #1
      pulse = 0; rst = 0;   #1
      pulse = 1; rst = 0;   #1
      pulse = 0; rst = 0;   #1
      pulse = 1; rst = 0;   #1
      pulse = 0; rst = 0;   #1
      pulse = 1; rst = 0;   #1
      pulse = 0; rst = 0;   #1
      pulse = 1; rst = 0;   #1
      pulse = 0; rst = 0;   #1
      pulse = 1; rst = 0;   #1
      pulse = 0; rst = 0;   #1
      pulse = 1; rst = 0;   #1
      pulse = 0; rst = 0;   #1
      pulse = 1; rst = 0;   #1
      pulse = 0; rst = 0;   #1
      pulse = 1; rst = 0;   #1
      pulse = 0; rst = 0;   #1
      pulse = 1; rst = 0;   #1
      pulse = 0; rst = 0;   #1
      pulse = 1; rst = 0;   #1
      pulse = 0; rst = 0;   #1
      pulse = 1; rst = 0;   #1
      pulse = 0; rst = 0;   #1
      pulse = 1; rst = 0;   #1
      pulse = 0; rst = 0;   #1
      pulse = 1; rst = 0;   #1
      pulse = 0; rst = 0;   #1
      pulse = 1; rst = 0;   #1
      pulse = 0; rst = 0;   #1
      pulse = 1; rst = 0;   #1
      pulse = 0; rst = 0;   #1
      pulse = 1; rst = 0;   #1
      pulse = 0; rst = 0;   #1
      pulse = 1; rst = 0;   #1
      pulse = 0; rst = 0;   #1
      pulse = 1; rst = 0;   #1
      pulse = 0; rst = 0;   #1
      pulse = 1; rst = 0;   #1
      pulse = 0; rst = 0;   #1
      pulse = 1; rst = 0;   #1
      pulse = 0; rst = 0;   #1
      pulse = 1; rst = 0;   #1
      pulse = 0; rst = 0;   #1
      pulse = 1; rst = 0;   #1
      pulse = 0; rst = 0;   #1
      pulse = 1; rst = 0;   #1
      pulse = 0; rst = 0;   #1
      pulse = 1; rst = 0;   #1
      pulse = 0; rst = 0;   #1
      pulse = 1; rst = 0;   #1
      pulse = 0; rst = 0;   #1
      pulse = 1; rst = 0;   #1
      pulse = 0; rst = 0;   #1
      pulse = 1; rst = 0;   #1
      pulse = 0; rst = 0;   #1
      pulse = 1; rst = 0;   #1
      pulse = 0; rst = 0;   #1
      pulse = 1; rst = 0;   #1
      pulse = 0; rst = 0;   #2
      pulse = 1; rst = 0;   #1
      pulse = 0; rst = 0;   #2
      pulse = 1; rst = 0;   #1
      pulse = 0; rst = 0;   #2
      pulse = 1; rst = 0;   #1
      pulse = 0; rst = 0;   #2
      pulse = 1; rst = 0;   #1
      pulse = 0; rst = 0;   #1
      pulse = 1; rst = 0;   #1
      pulse = 0; rst = 0;   #2
      pulse = 1; rst = 0;   #1
      pulse = 0; rst = 0;   #1
      pulse = 1; rst = 0;   #1
      pulse = 0; rst = 0;   #2
      pulse = 1; rst = 0;   #1
      pulse = 0; rst = 0;   #1
      pulse = 1; rst = 0;   #1
      pulse = 0; rst = 0;   #2
      pulse = 1; rst = 0;   #1
      pulse = 0; rst = 0;   #1
      pulse = 1; rst = 0;   #1
      pulse = 0; rst = 0;   #2
      pulse = 1; rst = 0;   #1
      pulse = 0; rst = 0;   #2
      pulse = 1; rst = 0;   #1
      pulse = 0; rst = 0;   #2
      pulse = 1; rst = 0;   #1
      pulse = 0; rst = 0;   #2
      pulse = 1; rst = 0;   #1
      $stop;
   end
endmodule
