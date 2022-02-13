`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2021 08:39:47 AM
// Design Name: 
// Module Name: sevenseg_control
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


module sevenseg_control(input logic [3:0] a0, a1, a2, a3, a4, a5, a6, a7,
                        input logic clk, rst,
                        output logic [7:0] an_1,
                        output logic [6:0] segs_1);
                        
    logic [2:0] q;      //This is the internal wire from the counter and selecter for the multiplexer and the input for the 3-8 decoder
    logic [3:0] y;      //This is the internal wire between the multiplexer and the seven segment
    
    mux_8_1 mux1(.a0, .a1, .a2, .a3, .a4, .a5, .a6, .a7, .s(q), .y);
    count_3bit count1(.clk, .rst, .q);
    dec_3_8 dec1(.a(q), .y_1(an_1));
    sevenseg_hex seven1(.data(y), .segs(segs_1));
    
    
endmodule
