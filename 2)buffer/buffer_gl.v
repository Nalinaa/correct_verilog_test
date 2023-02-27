module buffer_gl(y,d,enable);
  input d,enable;
  output y;
  and(y,d,enable);
endmodule
