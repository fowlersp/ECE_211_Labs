`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2021 08:46:19 AM
// Design Name: 
// Module Name: pulse_cnt
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


module pulse_cnt(input logic clk, pulse, rst,
                output logic [5:0] cnt);
                
    logic pulse_d, pulse_single;
    
    debounce db(.clk, .pb(pulse), .pb_debounced(pulse_d));
    single_pulser sp(.clk, .din(pulse_d), .d_pulse(pulse_single));
    
    always_ff @(posedge clk)
        begin
            if(rst) cnt <= 5'd0;
            if(pulse_single) cnt <= cnt + 1;
        end


        
endmodule 
