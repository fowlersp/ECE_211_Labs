`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2021 08:54:51 AM
// Design Name: 
// Module Name: lab7_top
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


module lab7_top(input logic [3:0] a0, a1, a2, a3, a4, a5, a6, a7,
                input logic clk_100MHz, rst,
                output logic [7:0] an_1,
                output logic [6:0] segs_1);
                
    logic clk_1hz;
    
    clkdiv#(.DIVFREQ(10))U_CLKDIV(.clk(clk_100MHz), .reset(1'b0),.sclk(clk_1hz));
    
    sevenseg_control sevenc1(.a0, .a1, .a2, .a3, .a4(4'hA), .a5(4'hA), .a6(4'hA), .a7(4'hA), .clk(clk_1hz), .rst, .an_1, .segs_1);
                
endmodule
