module ff(D,Q,clk,reset);
input D,clk,reset;
output reg Q;
always @(posedge clk or posedge reset)
if (reset==1) begin
    Q<=0;
end
else begin
    Q<=D;
end
endmodule
module siso_reg_ff(I,Y,clk,reset);
input I,clk,reset;
output Y;
wire [2:0]Q;
ff ff1 (I,Q[2],clk,reset);
ff ff2 (Q[2],Q[1],clk,reset);
ff ff3 (Q[1],Q[0],clk,reset);
ff ff4 (Q[0],Y,clk,reset);
endmodule
