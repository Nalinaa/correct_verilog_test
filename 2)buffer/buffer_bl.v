module buffer_bl(y,d,enable);
  input d,enable;
  output reg y;
  always @(*)
   
    case(enable)
      0:y=0;
      1:y=d;
    endcase
   endmodule
