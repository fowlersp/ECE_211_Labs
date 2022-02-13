`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/08/2021 07:47:35 PM
// Design Name: 
// Module Name: tbird_tb
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


module tbird_tb;
   logic clk, reset, ls, rs, haz;
   logic la, lb, lc, ra, rb, rc;

   tbird DUV( .clk, .reset, .ls, .rs, .haz, .la, .lb, .lc, .ra, .rb, .rc);
   
   parameter CLK_PD = 10;
   
   always begin
      clk = 1'b0; #(CLK_PD/2);
      clk = 1'b1; #(CLK_PD/2);
   end
   
   initial begin    
      ls = 0;
      rs = 0;
      haz = 0;
      reset = 1;
      @(posedge clk) #1;    //sets to default
      reset = 0;
      @(posedge clk); #1;
      haz = 0; 
      rs = 0; 
      ls = 1;
      @(posedge clk); #1;   //Left switch is turned on and cycle starts
      haz = 0; 
      rs = 0; 
      ls = 0;
      repeat (3) @(posedge clk) #1;
      haz = 0; 
      rs = 1; 
      ls = 0;
      @(posedge clk); #1;   //Right switch is turned on and cycle starts
      haz = 0; 
      rs = 0; 
      ls = 0;
      repeat (3) @(posedge clk); #1;
      haz = 1; 
      rs = 0; 
      ls = 0;
      @(posedge clk); #1;   //Hazard is turned on
      haz = 0; 
      rs = 0; 
      ls = 0;
      @(posedge clk); #1;
      haz = 0; 
      rs = 0; 
      ls = 1;
      @(posedge clk); #1;   //Left turn signal starts but is stopped by reset
      haz = 0; 
      rs = 0; 
      ls = 0;
      reset = 1;
      @(posedge clk); #1;   //Reset is hit to stop the left light cycle
      reset = 0;
      repeat(2) @(posedge clk); #1;
      $stop;
   end
endmodule
