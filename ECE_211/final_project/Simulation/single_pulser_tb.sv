`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2021 02:06:54 PM
// Design Name: 
// Module Name: single_pulser_tb
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


module single_pulser_tb;
   logic clk, pulse;
   logic d_pulse;

   single_pulser DUV( .clk, .din(pulse), .d_pulse);
   
   parameter CLK_PD = 5;
   
   always begin
      clk = 1'b0; #(CLK_PD/2);
      clk = 1'b1; #(CLK_PD/2);
   end
   
   initial begin    
      pulse = 0;   #1
      pulse = 1;   #2
      pulse = 0;   #1
      pulse = 1;   #2
      pulse = 0;   #1
      pulse = 1;   #2
      pulse = 0;   #1
      pulse = 1;   #2
      pulse = 0;   #1
      pulse = 1;   #2
      pulse = 0;   #1
      pulse = 1;   #2
      pulse = 0;   #1
      pulse = 1;   #2
      pulse = 0;   #1
      pulse = 1;   #2
      pulse = 0;   #1
      pulse = 1;   #2
      pulse = 0;   #1
      pulse = 1;   #2
      pulse = 0;   #1
      pulse = 1;   #2
      pulse = 0;   #1
      pulse = 1;   #2
      pulse = 0;   #1
      pulse = 1;   #2
      pulse = 0;   #1
      pulse = 1;   #2
      $stop;
   end
endmodule
