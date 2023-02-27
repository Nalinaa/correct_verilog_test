module seven_tb;
  reg d,clk,enable;
  wire q;
  seven dut(d,clk,enable,q);
  initial
  begin
    $dumpfile("seven.vcd");
    $dumpvars(1,seven_tb);
  end
  always #5 clk=~clk;
  initial
  begin
     clk=0;
    $monitor("Time=%t,enable=%b,d=%b,q=%b",$time,enable,d,q);
    enable=0;d=0;
    #5 enable=1;d=1;
    #5 enable=1;d=0;
    #9 enable=0;d=1;
    #11enable=0;d=0;
    #100 $finish;
  end
endmodule
