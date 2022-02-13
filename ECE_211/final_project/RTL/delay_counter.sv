`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/07/2019 08:59:13 AM
// Project : ECE 211 Digital Circuits I
// Module Name: delay_counter
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// Periodic delay timer for the Health Monitor project.  To use instantiate with
// delay in clock ticks.  Afer rst it will periodically assert delay_done each time
// the delay value passes.
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module delay_counter (input logic clk, rst, delay_start,
		             output logic delay_done);

   parameter DELAY_LIMIT = 5000;
   parameter DELAY_WIDTH = $clog2(DELAY_LIMIT);
   
   logic [DELAY_WIDTH-1:0]q;
   
   assign delay_done = (q == (DELAY_LIMIT-1));
   
   always_ff @(posedge clk)
     if (rst || delay_done) q <= 0;
     else if (delay_start) q <= q + 1;
     else q <= q;
      
endmodule // delay_timer
