`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2021 10:07:47 AM
// Design Name: 
// Module Name: register
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


module register(input logic clk, rst, din,
                input logic [5:0] d,
                output logic [5:0] q);

        always_ff@(posedge clk)
            begin
                if(rst) q <= 5'b00000;
                else 
                    if(din) q <= d;
                    else q <= q;
            end
            
endmodule
