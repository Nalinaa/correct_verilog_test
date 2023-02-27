module dff_r_tb;
  reg reset,d,clk;
  wire q;
  dff_r dut(reset,d,clk,q);
  initial
  begin
    $dumpfile("r_dff.vcd");
    $dumpvars(1,dff_r_tb);
  end
  always #5 clk=~clk;
   
  initial
    begin
    clk=0;reset=0;
  #5reset=1;
    end
  
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
