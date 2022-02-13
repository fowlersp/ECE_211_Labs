`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2021 09:31:10 AM
// Design Name: 
// Module Name: seven_seg_top
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


module seven_seg_top(input logic [3:0] d3, d2, d1, d0,
                     input logic clk, rst, rs_en, mode,
                     output logic [7:0] anode,
                     output logic [6:0] segs_1,
                     output logic dp);
    
    logic [1:0] q;
    logic [3:0] data;
    
    always_ff @(posedge clk)
    begin
        q <= q + 1;
    end
    
    mux_8_1 mux(.a0(d0), .a1(d1), .a2(d2), .a3(d3), .s(q), .y(data));
    dec_3_8 dec(.a(q), .mode, .rs_en, .y_1(anode), .dp);
    sevenseg_hex sh0(.data, .segs(segs_1));

endmodule
