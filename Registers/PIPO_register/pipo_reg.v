module pipo_reg(I,Y,clk,reset);
input [3:0]I;
input clk,reset;
output reg [3:0]Y;
always@(posedge clk or posedge reset)
if (reset==1)begin
    Y<=4'b0;
end
else begin
    Y<=I;
end
endmodule