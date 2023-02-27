module d_ff_posedge(input d,clk,output reg q);
  always@(posedge clk)
    q<=d;
endmodule
