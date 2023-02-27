module buffer_bl(y,d,enable);
  input d,enable;
  output reg y;
  always @(*)
   
    case(enable)
      0:y=1'bz;
      1:y=d;
    endcase
   endmodule
