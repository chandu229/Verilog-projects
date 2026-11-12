
module sr_ff(S,R,clk,Q);
input S,R,clk;
output reg Q;
always @(posedge clk)
begin
case({S,R})
2'b00: Q <= Q;
2'b01: Q <= 1'b0;
2'b10: Q <= 1'b1;
2'b11: Q <= x;
endcase
end
endmodule