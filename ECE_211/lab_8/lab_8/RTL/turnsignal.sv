`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/02/2021 07:57:51 AM
// Design Name: 
// Module Name: turnsignal
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

module turnsignal(input logic clk, reset, ls, rs, haz,
                  output logic ll, rl);
    typedef enum logic [1:0] {
        Idle = 2'b00,
        l = 2'b01,
        r = 2'b10,
        lr = 2'b11
    }   state_t;
    state_t ps, ns;
    
    always_ff@(posedge clk) 
        begin
            if (reset) ps <= Idle;
            else ps <= ns;
        end

    always_comb
        begin
            ll = 1'b0;
            rl = 1'b0;
            case(ps)
                Idle: 
                    begin
                        ll = 1'b0;
                        rl = 1'b0;
                        if (ls) ns = l;
                        else if (rs) ns = r;
                        else if (haz) ns = lr;
                        else ns = Idle;
                    end
                l:
                    begin
                        ll = 1'b1;
                        rl = 1'b0;
                        ns = Idle;
                    end
                r:
                    begin
                        ll = 1'b0;
                        rl = 1'b1;
                        ns = Idle;
                    end
                lr:
                    begin
                        ll = 1'b1;
                        rl = 1'b1;
                        ns = Idle;
                    end
                default: 
                    begin
                        ns = Idle;
                        ll = 1'b0;
                        rl = 1'b0;
                    end
             endcase
        end
endmodule
