module d_latch(input d,e,output reg q);
    always@(e,d)
begin
  if(!e)
          q<=q;
        else
          q<=d;
   end
endmodule
