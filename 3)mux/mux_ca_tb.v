module mux_ca_tb;
  reg a,c,sel;
  wire b;
  mux_ca dut(a,c,sel,b);
  initial
  begin
    $dumpfile("mux.vcd");
    $dumpvars(1,mux_ca_tb);
  end
  initial
  begin
    $monitor("Time=%t,a=%b,c=%b,sel=%b,b=%b",$time,a,c,sel,b);
    sel=0;a=1;c=0;
    #1 sel=1;a=1;c=0;
    #100 $finish;
  end
endmodule
