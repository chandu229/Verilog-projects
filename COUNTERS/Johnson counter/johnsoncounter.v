module dff(D,clk,reset,set,Q);
  input D,clk,reset,set;
  output reg Q;
  always@(posedge clk)
begin
  if (reset==1)
  Q<=1'b0;
else if (set==1)
Q<=1'b1;
else
Q<=D;
end
endmodule
module jhonsoncounter(clk,reset,q);
input clk,reset;
output  [3:0]q;


dff ff1(~q[3],clk,reset,1'b0,q[0]);
dff ff2(q[0],clk,reset,1'b0,q[1]);
dff ff3(q[1],clk,reset,1'b0,q[2]);
dff ff4(q[2],clk,reset,1'b0,q[3]);
endmodule
