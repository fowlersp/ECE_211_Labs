`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/07/2019 10:16:10 AM
// Design Name: 
// Module Name: single_pulser - detects a rising edge and outputs a single pulse
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// This circuit detects a rising edge on the input din.  WHen the rising edge occurs, 
// it outputs a single pulse one clock period in length.  It is based on the
// single pulser circuit described in Prosser & Winkel's book "The Art of Digital Design
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module single_pulser(input logic clk, din, output logic d_pulse);
   logic dq1, dq2;

   always_ff @(posedge clk)
     begin
	   dq1 <= din;
	   dq2 <= dq1;
     end

   assign d_pulse = dq1 & ~dq2;
endmodule // single_pulser

