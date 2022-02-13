`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2021 09:32:08 AM
// Design Name: 
// Module Name: alu_s
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


module alu_s #(parameter W=8)
    (input logic [2:0] f, input logic signed [W-1:0] a, b,
    output logic signed [W-1:0] result, output logic zero);
    
    logic signed [W-1:0]n0, n1, n2, n3, n4, n5;
    
    assign n0 = ~b;
    assign n1 = (f[2] ? b: n0);
    assign n2 = a ^ n1 ^ f[2];
    assign n3 = a | n1;
    assign n4 = a & n1;
    assign n5 = {{(W-1){1'b0}}, 1'b1};
    mux4p M41(.d0(n4), .d1(n3), .d2(n2), .d3(n5), .t0(f), .y(result));
    assign zero = (result ? '0: 1'b1);
    
endmodule
