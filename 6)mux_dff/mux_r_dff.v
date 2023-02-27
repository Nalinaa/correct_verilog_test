module mux_r_dff( reset,d,clk,q);
  
  input reset,d,clk;
  reg mux_o;
  output reg q;
  always@(reset,d)
    begin
      case(reset)
        1:mux_o=1'b0;
        0:mux_o=d;
      endcase
    end
      always@(posedge clk)
       q<=mux_o;
 
      endmodule
      
