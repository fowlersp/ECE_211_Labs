`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/28/2021 09:55:15 AM
// Design Name: 
// Module Name: lab4_toplevel
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


module lab4_toplevel(input logic [2:0] a, input logic [3:0] data, output logic [7:0] an, output logic [6:0] segs_1);
  
    dec_3_8 U_DC0 (.a(a), .y_1(an));
    sevenseg_hex U_SS0 (.data(data), .segs(segs_1));
    
endmodule
