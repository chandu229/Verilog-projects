module fulladderstructural(A,B,Cin,sum,carry);
input A,B;
input Cin;
output sum,carry;
wire x,y,z,w;
xor (x,B,Cin);
xor (sum,x,A);
and (y,A,B);
and (z,B,Cin);
and (w,A,Cin);
or (carry,y,z,w);

endmodule