module sync_fifo(DATAOUT, full, empty, clock, reset, wn, rn, DATAIN);
  output reg [31:0] DATAOUT;
  output full, empty;
  input [7:0] DATAIN;
  input clock, reset, wn, rn; 
  
  reg [1023:0] wptr, rptr; 
  reg [7:0] memory [1023:0]; 
  
  assign full = ({~wptr[1023],wptr[1022:0]}  == rptr[1023:0] ? 1 : 0 );
  assign empty = (wptr == rptr) ? 1 : 0;
  
  always @(posedge clock)
  begin
    if (reset)
      begin
        memory[1023:0]<=0;
        DATAOUT <= 0; wptr <= 0; rptr <= 0;
      end
    else if (wn & !full)
      begin
        memory[wptr] <= DATAIN;
        wptr <= wptr + 1;
      end
    else if (rn & !empty)
      begin
        DATAOUT <= memory[rptr];
        rptr <= rptr + 1;
      end
  end
endmodule
