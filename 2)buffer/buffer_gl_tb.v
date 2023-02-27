module buffer_gl_tb;
  reg d,enable;
  wire y;
  buffer_gl dut(y,d,enable);
  initial
  begin
    $dumpfile("buffer.vcd");
    $dumpvars(1,buffer_gl_tb);
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
