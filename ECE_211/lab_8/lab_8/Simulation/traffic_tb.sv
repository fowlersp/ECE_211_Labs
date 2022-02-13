module turnsignal_tb;
   logic clk, reset, ls, rs, haz;
   logic ll, rl;

   turnsignal DUV( .clk, .reset, .ls, .rs, .haz, .ll, .rl);
   
   parameter CLK_PD = 10;
   
   always begin
      clk = 1'b0; #(CLK_PD/2);
      clk = 1'b1; #(CLK_PD/2);
   end
   
   initial begin
      ls = 0;
      rs = 0;
      haz = 0;
      reset = 1;
      @(posedge clk) #1;
      reset = 0;
      repeat (2) @(posedge clk); #1;
      haz = 0; rs = 0; ls = 0;
      repeat (2) @(posedge clk); #1;
      haz = 0; rs = 0; ls = 1;
      reset = 1;
      @(posedge clk) #1;
      repeat (3) @(posedge clk); #1;
      haz = 0; rs = 0; ls = 0;
      @(posedge clk) #1;
      reset = 0;
      repeat (2) @(posedge clk); #1;
      haz = 0; rs = 1; ls = 0;
      repeat (3) @(posedge clk); #1;
      haz = 0; rs = 0; ls = 0;
      repeat (2) @(posedge clk); #1;
      haz = 1; rs = 0; ls = 0;
      repeat (3) @(posedge clk); #1;
      haz = 0; rs = 0; ls = 0;
      repeat (2) @(posedge clk); #1;
      $stop;
   end
endmodule 
