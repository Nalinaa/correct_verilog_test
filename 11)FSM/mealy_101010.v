module mealy_101010(input  clk, input rst,input x, output z);
  parameter A = 4'h1;
  parameter B = 4'h2;
  parameter C = 4'h3;
  parameter D = 4'h4;
  parameter E = 4'h5;
  parameter F = 4'h6;
  
  reg [2:0] state, next_state;
  always @(posedge clk ) begin
    if(!rst) begin 
      state <= A;
    end
    else state <= next_state;
  end
  
  always @(state or x) begin
    case(state)
      A: begin
        if(x == 1) next_state = B;
           else       next_state = A;
         end
      B: begin
        if(x == 0) next_state = C;
           else       next_state =B ;
         end
      C: begin
        if(x == 1) next_state = D;
           else       next_state = A;
         end
      D: begin
        if(x == 0) next_state = E;
           else       next_state = B;
         end
      E: begin
         if(x == 1) next_state = F;
           else       next_state = A;
         end
      F: begin
        if(x == 0) next_state =E;
           else       next_state = B;
         end
      default: next_state = A;
    endcase
  end
  assign z = (state == F)? 1:0;
endmodule
