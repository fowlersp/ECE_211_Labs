`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/08/2021 07:29:06 PM
// Design Name: 
// Module Name: tbird
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


module tbird(input logic clk, reset, ls, rs, haz,
             output logic la, lb, lc, ra, rb, rc);
             
    typedef enum logic [3:0] { //Declares all of the states
        Idle = 3'b000,
        l1 = 3'b001,
        l2 = 3'b010,
        l3 = 3'b011,
        r1 = 3'b100,
        r2 = 3'b101,
        r3 = 3'b110,
        lr = 3'b111      //Also the hazard state
    }   state_t;
    state_t ps, ns;     //ps: present state, ns: next state
    
    always_ff@(posedge clk) 
        begin
            if (reset) ps <= Idle;
            else ps <= ns;
        end 
        
    always_comb
        begin
            la = 1'b0;
            lb = 1'b0;
            lc = 1'b0;
            ra = 1'b0;
            rb = 1'b0;
            rc = 1'b0;
            case(ps)
                Idle: 
                    begin
                        la = 1'b0;
                        lb = 1'b0;
                        lc = 1'b0;
                        ra = 1'b0;
                        rb = 1'b0;
                        rc = 1'b0;
                        if (haz||(ls&rs)) ns = lr;        //Determines what the next state is
                        else if (rs) ns = r1;
                        else if (ls) ns = l1;
                        else ns = Idle;
                    end
                l1:
                    begin
                        la = 1'b1;
                        lb = 1'b0;
                        lc = 1'b0;
                        ra = 1'b0;
                        rb = 1'b0;
                        rc = 1'b0;
                        ns = l2;
                    end
                l2:
                    begin
                        la = 1'b1;
                        lb = 1'b1;
                        lc = 1'b0;
                        ra = 1'b0;
                        rb = 1'b0;
                        rc = 1'b0;
                        ns = l3;
                    end
                l3:
                    begin
                        la = 1'b1;
                        lb = 1'b1;
                        lc = 1'b1;
                        ra = 1'b0;
                        rb = 1'b0;
                        rc = 1'b0;
                        ns = Idle;
                    end
                r1:
                    begin
                        la = 1'b0;
                        lb = 1'b0;
                        lc = 1'b0;
                        ra = 1'b1;
                        rb = 1'b0;
                        rc = 1'b0;
                        ns = r2;
                    end
                r2:
                    begin
                        la = 1'b0;
                        lb = 1'b0;
                        lc = 1'b0;
                        ra = 1'b1;
                        rb = 1'b1;
                        rc = 1'b0;
                        ns = r3;
                    end
                r3:
                    begin
                        la = 1'b0;
                        lb = 1'b0;
                        lc = 1'b0;
                        ra = 1'b1;
                        rb = 1'b1;
                        rc = 1'b1;
                        ns = Idle;
                    end
                lr:
                    begin
                        la = 1'b1;
                        lb = 1'b1;
                        lc = 1'b1;
                        ra = 1'b1;
                        rb = 1'b1;
                        rc = 1'b1;
                        ns = Idle;
                    end
                default: 
                    begin
                        ns = Idle;
                        la = 1'b0;
                        lb = 1'b0;
                        lc = 1'b0;
                        ra = 1'b0;
                        rb = 1'b0;
                        rc = 1'b0;
                    end
             endcase
        end
endmodule
