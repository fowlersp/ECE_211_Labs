`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2021 08:00:04 AM
// Design Name: 
// Module Name: count_3bit
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


module count_3bit(input logic clk, rst,
                    output logic [2:0] q);
    always_ff @(posedge clk)
        if (rst) q <= 3'd0;
        else q <= q + 3'd1;
        
endmodule

