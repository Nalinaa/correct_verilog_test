module d_latch_reset_tb;
  reg d,e,reset;
  wire q;
  d_latch_reset dut(d,e,reset,q);
  initial
  begin
    $dumpfile("d_latch.vcd");
    $dumpvars(1,d_latch_reset_tb);
  end
  initial
  begin
    $monitor("Time=%t,reset=%b,e=%b,d=%b,q=%b",$time,e,d,q);
    reset=1;e=0;d=1;
    #1 reset=0;e=1;d=0;
    #1 reset=1;e=1;d=1;
    #1 reset=1;e=1;d=0;
    #1 reset=1;e=1;d=1;
    #100 $finish;
  end
endmodule
