module register_4bit(D,Q,clk,reset);
input [3:0]D,reset,clk;
output reg [3:0]Q;
always@(posedge clk)
if (reset==1)begin
    Q=0;
end
else begin
    Q<=D;
end
endmodule