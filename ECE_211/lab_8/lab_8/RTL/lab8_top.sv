`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/09/2021 07:43:28 AM
// Design Name: 
// Module Name: lab8_top
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


module lab8_top(input logic reset, ls, rs, haz,
                input logic clk_100MHz,
                output logic la, lb, lc, ra, rb, rc);
                
    logic clk_2hz;  //internal wire
    
    clkdiv #(.DIVFREQ(2)) U_CLKDIV(.clk(clk_100MHz), .reset(1'b0),.sclk(clk_2hz));    //instance of clock divider at 2hz	
    tbird tbird1(.clk(clk_2hz), .reset, .ls, .rs, .haz, .la, .lb, .lc, .ra, .rb, .rc);  //Instance of tbird module
                
                
endmodule
