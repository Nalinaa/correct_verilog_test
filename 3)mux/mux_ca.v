module mux_ca(input a,c,sel,output b);
  assign b=(c&(~sel))|(a&sel);
endmodule
