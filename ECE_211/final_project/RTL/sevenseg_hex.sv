`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/28/2021 09:12:59 AM
// Design Name: 
// Module Name: sevenseg_hex
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


module sevenseg_hex(input logic [3:0] data, output logic [6:0] segs);
    always_comb
        case(data) 
            4'd0: segs = 7'b0000001;
            4'd1: segs = 7'b1001111;
            4'd2: segs = 7'b0010010;
            4'd3: segs = 7'b0000110;
            4'd4: segs = 7'b1001100;
            4'd5: segs = 7'b0100100;
            4'd6: segs = 7'b0100000;
            4'd7: segs = 7'b0001111;
            4'd8: segs = 7'b0000000;
            4'd9: segs = 7'b0001100;       
            default: segs = 7'b1111111;
        endcase  
endmodule
