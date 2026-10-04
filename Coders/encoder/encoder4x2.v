
module encoder4x2(I,A,B);
input [3:0]I;
output A,B;
assign A= I[2] | I[3];
assign B= I[1] | I[3];

endmodule
