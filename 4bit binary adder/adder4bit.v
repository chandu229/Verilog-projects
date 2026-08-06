
module fulladder(a,b,cin,sum,carry);
input a,b,cin;
output sum,carry;

assign sum = a^b^cin;
assign carry = (a&b) | (a&cin) | (b&cin);

endmodule
// Code your design here
module adder4bit(A,B,cin,sum,cout);

  input [4:1] A;
  input [4:1] B;
input cin;

output [1:4] sum;
output  cout;
wire [1:3]c;
fulladder adder1(A[1],B[1],cin,sum[1],c[1]);
fulladder adder2(A[2],B[2],c[1],sum[2],c[2]);
fulladder adder3(A[3],B[3],c[2],sum[3],c[3]);
fulladder adder4(A[4],B[4],c[3],sum[4],cout);

endmodule
