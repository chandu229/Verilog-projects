primitive udp_mux4x1(Y,I1,I2,I3,I4,S1,S2);
input I1,I2,I3,I4,S1,S2;
output Y;
table
// S1 S2 I1 I2 I3 I4 : Y;
0 0 1 ? ? ? : 1; 
0 1 ? 1 ? ? : 1;
1 0 ? ? 1 ? : 1;
1 1 ? ? ? 1 : 1;
0 0 0 ? ? ? : 0; 
0 1 ? 0 ? ? : 0;
1 0 ? ? 0 ? : 0;
1 1 ? ? ? 0 : 0;
endtable 
endprimitive
module topmodule(I1,I2,I3,I4,S1,S2,Y);
input I1,I2,I3,I4,S1,S2;
output Y;
udp_mux4x1(Y,I1,I2,I3,I4,S1,S1);
endmodule
