module nand_switch(A,B,Y);
input A,B;
output Y;
wire x;
supply0 b;
supply1 a;
pmos(Y,a,A);
pmos(Y,a,B);
nmos(Y,x,A);
nmos(x,b,B);
endmodule
