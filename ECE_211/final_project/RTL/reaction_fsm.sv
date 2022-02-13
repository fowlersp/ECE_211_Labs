`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/23/2021 07:43:41 AM
// Design Name: 
// Module Name: reaction_fsm
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


module reaction_fsm(input logic clk, rst, rwait_done, wait5_done, start, enter, time_late,
                    output logic [2:0] color_rgb,
                    output logic time_clr, time_en, rs_en, start_rwait, start_wait5);
    
    typedef enum logic [2:0] {
        Idle = 3'b000,
        wait_t = 3'b001,
        error_r = 3'b010,
        input_t = 3'b011,
        error_y = 3'b100,
        output_d = 3'b101,
        starts = 3'b110
    } state_t;
    state_t ps, ns;     //ps: present state    ns: next state
        
    always_ff@(posedge clk)
        begin
            if (rst) ps <= starts;
            else ps <= ns;
        end
    
    always_comb
        begin
            time_clr = 1'b0;
            time_en = 1'b0;
            rs_en = 1'b0;
            start_rwait = 1'b0;
            start_wait5 = 1'b0;
            case(ps)
                Idle:
                    begin
                         color_rgb = 3'b000;
                         rs_en = 1'b1;
                         if (start) ns = wait_t;
                         else ns = Idle;
                    end
                wait_t:
                    begin
                        color_rgb = 3'b000;
                        start_rwait = 1'b1;
                        time_clr = 1'b1;
                        if (enter && !rwait_done) ns = error_r;
                        else if (rwait_done) ns = input_t;
                        else ns = wait_t;
                    end
                error_r:
                    begin
                        color_rgb = 3'b100;
                        start_wait5 = 1'b1;
                        if (wait5_done) ns = starts;
                        else ns = error_r;
                    end
                input_t:
                    begin
                        time_clr = 1'b0;
                        color_rgb = 3'b111;
                        time_en = 1'b1;
                        if (time_late) ns = error_y;
                        else if (enter) ns = output_d;
                        else ns = input_t;
                    end
                error_y:
                    begin
                        color_rgb = 3'b110;
                        start_wait5 = 1'b1;
                        if (wait5_done) ns = starts;
                        else ns = error_y;  
                    end
                output_d: 
                    begin
                        time_en = 1'b0;
                        rs_en = 1'b1;
                        color_rgb = 3'b111;
                        start_wait5 = 1'b1;
                        if (wait5_done) ns = Idle;
                        else ns = output_d;
                    end
                starts:
                    begin
                        color_rgb = 3'b000;
                        if (start) ns = wait_t;
                        else ns = starts;
                    end       
                default:
                    begin
                        ns = Idle;
                    end
            endcase
       end
endmodule
