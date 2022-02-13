`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2021 08:36:21 AM
// Design Name: 
// Module Name: mux_8_1
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


module mux_8_1(input logic [3:0] a0, a1, a2, a3,
               input logic [1:0] s,
               output logic [3:0] y);
    always_comb
        case (s)
            2'b00: y = a0;
            2'b01: y = a1;
            2'b10: y = a2;
            2'b11: y = a3;
            default: y = '0;
        endcase
endmodule

