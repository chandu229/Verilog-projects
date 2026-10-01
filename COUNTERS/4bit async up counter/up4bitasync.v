
module jk_ff(J,K,reset,clk,Q);
input J,K,clk,reset;
output reg Q;

  
  always @(posedge clk)
begin 
if (reset == 1)
   Q<=1'b0;

else
begin
case ({J,K})
2'b00: Q <= Q;
2'b01: Q <= 1'b0;
2'b10: Q <= 1'b1;
2'b11: Q <= ~Q;
endcase
end
end
endmodule
module up4bitasync(clk,reset,q);
input clk,reset;
  output [3:0]q;
  
  jk_ff ff1(1'b1,1'b1,reset,clk,q[0]);
  jk_ff ff2(1'b1,1'b1,reset,~q[0],q[1]);
  jk_ff ff3(1'b1,1'b1,reset,~q[1],q[2]);
  jk_ff ff4(1'b1,1'b1,reset,~q[2],q[3]);
endmodule
