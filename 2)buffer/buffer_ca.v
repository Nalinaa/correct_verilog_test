module buffer_ca(y,d,enable);
  input d,enable;
  output y;
  assign y=d&enable;
endmodule
