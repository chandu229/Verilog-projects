module dff(D,clk,reset,Q);
  input D,clk,reset;
  output reg Q;
  always@(posedge clk)
begin
  if (reset)
  Q<=1'b0;
else
Q<=D;
end
endmodule
module ringcounter(clk,reset,q);
input clk,reset;
output  [3:0]q;
initial
[3:0]q<=4'b1000;
dff ff1(q[3],clk,reset,q[0]);
dff ff2(q[0],clk,reset,q[1]);
dff ff3(q[1],clk,reset,q[2]);
dff ff4(q[2],clk,reset,q[3]);
endmodule
