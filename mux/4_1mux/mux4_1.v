module mux4_1(I1,I2,I3,I4,S1,S2,Y);
input I1,I2,I3,I4;

input S1,S2;
output Y;
assign Y = (~S1 & ~S2 & I1) |
	(~S1 & S2 & I2) |
	(S1 & ~S2 & I3) |
	(S1 & S2 & I4);
endmodule
