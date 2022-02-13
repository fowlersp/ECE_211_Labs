`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/23/2021 07:38:02 AM
// Design Name: 
// Module Name: rgb_control
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

module rgb_control(input logic clk, rst, 
                   input logic [2:0] color_rgb,
                   output logic rgb_r, rgb_g, rgb_b);
        
        logic [3:0] q, color_RGB;
        always_ff@(posedge clk)
            begin
                if (rst) q <= 4'd0;
                else q <= q + 4'd1;
            end
        
//        assign color_RGB = {1'b0, color_rgb};
//        assign rgb_r = color_RGB[2];
//        assign rgb_g = color_RGB[1];
//        assign rgb_b = color_RGB[0];  
        
        always_comb
            begin
                if(color_rgb == 3'b111)
                    begin
                        if(q % 3 == 0) 
                          begin
                                rgb_r = 1'b1;
                                rgb_g = 1'b0;
                                rgb_b = 1'b0;
                          end
                        else if(q % 3 == 1)
                            begin
                                rgb_r = 1'b0;
                                rgb_g = 1'b1;
                                rgb_b = 1'b0;
                          end
                        else 
                            begin
                                rgb_r = 1'b0;
                                rgb_g = 1'b0;
                                rgb_b = 1'b1;
                          end
                    end
                else if(color_rgb == 3'b100)
                    begin
                        if(q % 2 == 1)
                            begin
                                rgb_r = 1'b1;
                                rgb_g = 1'b0;
                                rgb_b = 1'b0;
                          end
                        else 
                            begin
                                rgb_r = 1'b0;
                                rgb_g = 1'b0;
                                rgb_b = 1'b0;
                          end
                   end
               else if(color_rgb == 3'b110)
                    begin
                        rgb_b = 1'b0;
                        if(q % 3 == 0) 
                            begin
                                rgb_r = 1'b1;
                                rgb_g = 1'b0;
                                rgb_b = 1'b0;
                          end
                        else if(q % 3 == 1)
                            begin
                                rgb_r = 1'b0;
                                rgb_g = 1'b1;
                                rgb_b = 1'b0;
                          end
                        else 
                            begin
                                rgb_r = 1'b1;
                                rgb_g = 1'b0;
                                rgb_b = 1'b0;
                          end
                    end
              else
                    begin
                        rgb_r = 1'b0;
                        rgb_g = 1'b0;
                        rgb_b = 1'b0;
                   end
         end
                 
                  
endmodule  //rgb_pwm
