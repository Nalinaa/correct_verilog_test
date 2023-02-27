module mux_r_dff_tb;
  reg reset,d,clk;
  wire q;
  mux_r_dff dut(reset,d,clk,q);
  initial
  begin
    $dumpfile("mux_r_dff.vcd");
    $dumpvars(1,mux_r_dff_tb);
  end
  always #5 clk=~clk;
   
  initial
    begin
    clk=0;reset=1;
  #2 reset=0;
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
