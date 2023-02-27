module buffer_ca_tb;
  reg d,enable;
  wire y;
  buffer_ca dut(y,d,enable);
  initial
  begin
    $dumpfile("buffer.vcd");
    $dumpvars(1,buffer_ca_tb);
  end
  initial
  begin
    $monitor("Time=%t,d=%b,enable=%b,y=%b",$time,d,enable,y);
    d=0;enable=0;
    #1 d=0;enable=1;
    #1 d=1;enable=0;
    #1 d=1;enable=1;
    #100 $finish;
  end
endmodule
