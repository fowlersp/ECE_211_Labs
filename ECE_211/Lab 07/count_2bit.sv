`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/16/2019 06:03:19 PM
// Design Name: 
// Module Name: count_2bit
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


module count_2bit( input logic clk,rst,
                    output logic [1:0] q);
  always_ff @(posedge clk)
   if (rst) q <= 2'd0;
    else q <= q + 2'd1;
           
endmodule
