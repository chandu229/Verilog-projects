module adder4bitstruct(A,B,cin,sum,cout);
input [4:1]A;
input [4:1]B;
input cin;
output [4:1]sum;
output  cout;
wire [1:3]c;
fulladderstructural adder1(A[1],B[1],cin,sum[1],c[1]);
fulladderstructural adder2(A[2],B[2],c[1],sum[2],c[2]);
fulladderstructural adder3(A[3],B[3],c[2],sum[3],c[3]);
fulladderstructural adder4(A[4],B[4],c[3],sum[4],cout);
endmodule









