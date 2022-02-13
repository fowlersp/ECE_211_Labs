`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/28/2021 08:58:40 AM
// Design Name: 
// Module Name: dec_3_8
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


module dec_3_8(input logic [1:0] a, input logic mode, rs_en, output logic [7:0] y_1, output logic dp);
    logic [7:0] y;
    always_comb
    begin
         if(mode)
                begin
            case(a)
                2'd0:
                begin 
                    y = 8'b00000001;
                    dp = 1;
                end
                2'd1: 
                begin 
                    y = 8'b00000010;
                    dp = 1;
                end
                2'd2: 
                begin 
                    y = 8'b00000100;
                    dp = 1;
                end
                2'd3: 
                begin 
                    y = 8'b00000000;
                    dp = 1;
                end
            endcase
            end
        else if (rs_en)
           begin
           case(a)
                2'd0: 
                begin 
                    y = 8'b00000001;
                    dp = 1;
                end
                2'd1:
                begin 
                    y = 8'b00000010;
                    dp = 1;
                end
                2'd2:
                begin 
                    y = 8'b00000100;
                    dp = 1;
                end
                2'd3:
                    begin 
                    y = 8'b00001000;
                    dp = 0;
                end
            endcase
           end
       else y = 8'b00000000;
         end
    assign y_1 = ~y;
endmodule
