module d_ff_negedge_tb;
  reg d,clk;
  wire q;
  d_ff_negedge dut(d,clk,q);
  initial
  begin
    $dumpfile("d_ff_negedge.vcd");
    $dumpvars(1,d_ff_negedge_tb);
  end
  initial
    clk=0;
  always #5 clk=~clk;
  initial
  begin
    $monitor("Time=%t,d=%b,q=%b",$time,d,q);
    d=0;
    #3 d=1;
    #6 d=0;
    #9 d=1;
    #100 $finish;
  end
endmodule
