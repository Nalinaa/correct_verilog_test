module mealy_101010_tb;
  reg clk, rst, x;
  wire z;
  
  mealy_101010 dut(clk, rst, x, z);
  initial clk = 0;   
  always #2 clk = ~clk;
  initial
    begin
      $dumpfile("mealy.vcd");
                $dumpvars(1,mealy_101010_tb);
                end
    
  initial begin
    
    x = 0;
    #1 rst = 0;
    #2 rst= 1;
    
    #3 x = 1;
    #4 x = 1;
    #4 x = 0;
    #4 x = 1;
    #4 x = 0;
    #4 x = 1;
    #4 x = 0;
    #4 x = 1;
    #4 x = 0;
    #4 x = 1;
    #4 x = 0;
    
    #100 $finish;
  end
endmodule
