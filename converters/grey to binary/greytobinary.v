module greytobinary(G1,G2,G3,G4,B1,B2,B3,B4);
output B1,B2,B3,B4;
input G1,G2,G3,G4;
assign B1=G1;
assign B2= B1 ^ G2;
assign B3= B2 ^ G3;
assign B4= B3 ^ G4;
endmodule
