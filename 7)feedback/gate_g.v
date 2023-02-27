module gate_g(input d,clk,enable,output reg q);
  wire g_clk;
  assign g_clk=clk&enable;
  always@(posedge g_clk)
    q<=d;
endmodule
    
