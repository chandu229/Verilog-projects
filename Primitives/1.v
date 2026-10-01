primitive udpmux4x1(Y,I0,I1,I2,I3,S1,S2);
input S1,S2;
input I0,I1,I2,I3;
output Y;
table

//S1 S2 I0 I1 I2 I3 :y;
0  0  1 ? ? ? : 1;
0  1  ? 1 ? ? : 1;
1  0  ? ? 1 ? : 1;
1  1  ? ? ? 1 : 1;

0  0  0 ? ? ? : 0;
0  1  ? 0 ? ? : 0;
1  0  ? ? 0 ? : 0;
1  1  ? ? ? 0 : 0;
endtable
endprimitive
module mux(I0,I1,I2,I3,S1,S2,Y);
input I0,I1,I2,I3,S1,S2;
output Y;
udpmux4x1 (Y,I0,I1,I2,I3,S1,S2);
endmodule
