primitive udp_mux2x1(Y,I1,I2,S);
input I1,I2,S;
output Y;
table
// S I1 I2 : Y;
0 1 ? : 1;
1 ? 1 : 1;
0 0 ? : 0;
1 ? 0 : 0;
endtable
endprimitive
module mux4x1(I1,I2,I3,I4,S1,S2,Y);
input I1,I2,I3,I4,S1,S2;
output Y;
wire Y1,Y2;
udp_mux2x1 m1(Y1,I1,I2,S1);
udp_mux2x1 m2(Y2,I3,I4,S1);
udp_mux2x1 m3(Y,Y1,Y2,S2);
endmodule
