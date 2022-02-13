`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2021 10:13:43 PM
// Design Name: 
// Module Name: pulse_cnt_tb
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


module pulse_cnt_tb;
   logic clk, rst, pulse;
   logic [5:0] cnt;

   pulse_cnt DUV( .clk, .rst, .pulse, .cnt);
   
   parameter CLK_PD = 5;
   
   always begin
      clk = 1'b0; #(CLK_PD/2);
      clk = 1'b1; #(CLK_PD/2);
   end
   
   initial begin    
      pulse = 0; rst = 1;   #10
      pulse = 0; rst = 0;   #1
      pulse = 1; rst = 0;   #2
      pulse = 0; rst = 0;   #1
      pulse = 1; rst = 0;   #2
      pulse = 0; rst = 0;   #1
      pulse = 1; rst = 0;   #2
      pulse = 0; rst = 0;   #1
      pulse = 1; rst = 0;   #2
      pulse = 0; rst = 0;   #1
      pulse = 1; rst = 0;   #2
      pulse = 0; rst = 0;   #1
      pulse = 1; rst = 0;   #2
      pulse = 0; rst = 0;   #1
      pulse = 1; rst = 0;   #2
      pulse = 0; rst = 0;   #1
      pulse = 1; rst = 0;   #2
      pulse = 0; rst = 0;   #1
      pulse = 1; rst = 0;   #2
      pulse = 0; rst = 0;   #1
      pulse = 1; rst = 0;   #2
      pulse = 0; rst = 0;   #1
      pulse = 1; rst = 0;   #2
      pulse = 0; rst = 0;   #1
      pulse = 1; rst = 0;   #2
      pulse = 0; rst = 0;   #1
      pulse = 1; rst = 0;   #2
      pulse = 0; rst = 0;   #1
      pulse = 1; rst = 0;   #2
      $stop;
   end
endmodule
