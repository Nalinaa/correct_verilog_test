module gate_level_tb;
  reg a,b;
  wire c;
  gate_level dut(a,b,c);
  initial
  begin
    $dumpfile("and.vcd");
    $dumpvars(1,gate-level_tb);
  end
  initial
  begin
    $monitor("Time=%t,a=%b,b=%b,c=%b",$time,a,b,c);
    a=0;b=0;
    #1 a=0;b=1;
    #1 a=1;b=0;
    #1 a=1;b=1;
    $finish;
  end
endmodule
