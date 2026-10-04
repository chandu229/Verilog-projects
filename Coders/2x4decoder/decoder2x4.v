
module decoder2x4(Y,A,B);
output [3:0]Y;
input A,B;
assign Y[0]= (~A & ~B);
assign Y[1]=(~A & B);
assign Y[2]=(A & ~B);
assign Y[3]=(A & B);
endmodule
