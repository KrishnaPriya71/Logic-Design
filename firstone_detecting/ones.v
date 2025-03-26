module ones(in,clk,reset,Q);
  input in,clk,reset;
  output reg Q;
  
  always @(posedge clk or negedge reset)
    begin
      if(!reset)
        Q<=0;
      else
        Q<=Q | in;
    end
endmodule
  
