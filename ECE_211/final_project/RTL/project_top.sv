`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2021 07:16:48 PM
// Design Name: 
// Module Name: project_top
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


module project_top(input logic clk, pulse, mode, start, enter, rst,
                   output logic rgb_r, rgb_g, rgb_b, dp,
                   output logic [6:0] segs_1,
                   output logic [7:0] an); 

    logic clkdiv, rs_en;
    logic [3:0] rthousands, rhundreds, rtens, rones, hthousands, hhundreds, htens, hones, d3, d2, d1, d0;
    
    clkdiv clkd(.clk, .reset(1'b0), .sclk(clkdiv));
    heart_rate_top htop(.clk(clkdiv), .pulse, .rst, .thousands(hthousands), .hundreds(hhundreds), .tens(htens), .ones(hones));
    reaction_timer_top rtop(.clk(clkdiv), .start, .enter, .rst, .rs_en, .rgb_r, .rgb_g, .rgb_b, .d3(rthousands), .d2(rhundreds), .d1(rtens), .d0(rones));
    mode_select modes(.mode, .pulse_rate0(hones), .pulse_rate1(htens), .pulse_rate2(hhundreds), .pulse_rate3(hthousands), 
                      .reaction_time0(rones), .reaction_time1(rtens), .reaction_time2(rhundreds), .reaction_time3(rthousands),
                      .mode_select0(d0), .mode_select1(d1), .mode_select2(d2), .mode_select3(d3));
    seven_seg_top stop(.d3, .d2, .d1, .d0, .clk(clkdiv), .rst, .rs_en, .mode, .anode(an), .segs_1, .dp);


endmodule
