module seven(d,clk,enable,q);
input d,clk,enable;
  output reg q;
  reg mux_o;
 always@(*)
    begin
      if(!enable)
        mux_o=q;
      else
        mux_o=d;
    end
  always@(posedge clk)
      q=mux_o;
endmodule
      
