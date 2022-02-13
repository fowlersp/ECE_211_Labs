`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/18/2021 07:39:19 PM
// Design Name: 
// Module Name: mux4p_tb
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


module mux4p_tb;
    logic [3:0]d0;
    logic [3:0]d1;
    logic [3:0]d2;
    logic [3:0]d3;
    logic [1:0]t0;
    logic [3:0]y;
    
    mux4p #4 DUV (.d0(d0), .d1(d1), .d2(d2), .d3(d3), .t0(t0), .y(y));
    initial
        begin
        d0 = 4'b1000; d1 = 4'b0100; d2 = 4'b0010; d3 = 4'b0001; t0 = 2'b00; #10;
        d0 = 4'b1000; d1 = 4'b0100; d2 = 4'b0010; d3 = 4'b0001; t0 = 2'b01; #10;
        d0 = 4'b1000; d1 = 4'b0100; d2 = 4'b0010; d3 = 4'b0001; t0 = 2'b10; #10;
        d0 = 4'b1000; d1 = 4'b0100; d2 = 4'b0010; d3 = 4'b0001; t0 = 2'b11; #10;
        $stop;
        end
endmodule
