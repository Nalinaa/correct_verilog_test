module buffer_ca(y,d,enable);
  input d,enable;
  output y;
  assign y=(enable==1)?1:1'bz;
endmodule
