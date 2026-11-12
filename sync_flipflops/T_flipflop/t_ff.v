module t_ff(T,clk,Q);
input T,clk;
output reg Q;
  initial
    Q=1'b0;
always@(posedge clk)
begin
  if (T ==0)

    Q <= Q;
else Q <= ~Q;
end
endmodule