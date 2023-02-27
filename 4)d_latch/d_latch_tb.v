module d_latch_tb;
  reg d,e;
  wire q;
  d_latch dut(d,e,q);
  initial
  begin
    $dumpfile("d_latch.vcd");
    $dumpvars(1,d_latch_tb);
  end
  initial
  begin
    $monitor("Time=%t,e=%b,d=%b,q=%b",$time,e,d,q);
    e=0;d=1;
    #1 e=1;d=0;
    #1 e=1;d=1;
    #1 e=0;d=0;
    #100 $finish;
  end
endmodule
