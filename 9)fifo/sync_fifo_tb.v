module sync_fifo_tb;
  reg[7:0] DATAIN;
  reg clock,reset,wn,rn;
  wire [31:0] DATAOUT;
  wire full,empty;
  sync_fifo dut(DATAOUT, full, empty, clock, reset, wn, rn, DATAIN);
  initial
    begin
      $dumpfile("fifo.vcd");
      $dumpvars(1,sync_fifo_tb);
    end
  always#5 clock=~clock;
  initial
    begin
      $monitor("DATAIN=%b,DATAOUT=%b",DATAIN,DATAOUT);
      reset=1;clock=0;
      #5 reset=0
         
      DATAIN=$random;
      #2DATAIN=$random;
      #2DATAIN=$random;
      #1000 $finish;
    end
endmodule
      
