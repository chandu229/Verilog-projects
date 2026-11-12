module d_ff(D,Q,clk,reset);
input D,clk,reset;
output reg Q;
always @(posedge clk or posedge reset)
if(reset==1)begin
    Q<=0;
end
else begin
    Q<=D;
end
endmodule
