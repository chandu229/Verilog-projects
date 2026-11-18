module siso_reg(I,Y,clk,reset);
input I,clk,reset;
output reg Y;
reg [3:0]q;
always @ (posedge clk or posedge reset)
if (reset==1) begin
    q<=4'b0;
end
else begin
    q<={q[2:0],I};
     Y<=q[3];
end
endmodule 