module jk_ff(J,K,clk,Q);
input J,K,clk;
output reg Q;
  initial Q=1'b0;
  always @(posedge clk)
  
begin 
case ({J,K})
2'b00: Q <= Q;
2'b01: Q <= 1'b0;
2'b10: Q <= 1'b1;
2'b11: Q <= ~Q;
endcase
end
endmodule
module up4bitsync(clk,q);
input clk;
  output reg [3:0]q;
  wire x,y;
  
  jk_ff ff1(1'b1,1'b1,clk,q[0]);
  jk_ff ff2(q[0],q[0],clk,q[1]);
  and (x,q[0],q[1]);
  jk_ff ff3(x,x,clk,q[2]);
  and(y,x,q[2]);
  jk_ff ff4(y,y,clk,q[3]);
endmodule
