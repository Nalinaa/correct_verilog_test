module con_assg_tb;
  reg a,b;
  wire c;
  con_assg dut(a,b,c);
  initial
  begin
    $dumpfile("and.vcd");
    $dumpvars(1,con_assg_tb);
  end
  initial
  begin
    $monitor("Time=%t,a=%b,b=%b,c=%b",$time,a,b,c);
    a=0;b=0;
    #1 a=0;b=1;
    #1 a=1;b=0;
    #1 a=1;b=1;
    #100 $finish;
  end
endmodule
