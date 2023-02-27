module d_latch_reset(input d,e,reset,output reg q);
  always@(e,d,reset)
begin
  if(reset)
    q<=0;
  
  else 
    case(e)
      0:q<=q;
      1:q<=d;
    endcase
   end
endmodule
