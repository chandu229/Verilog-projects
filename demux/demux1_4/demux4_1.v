module demux4_1(I,S1,S2,Y1,Y2,Y3,Y4);
input I,S1,S2;
output Y1,Y2,Y3,Y4;
assign Y1=(~S1 & ~S2 & I);
assign Y2=(~S1 & S2 & I);
assign Y3=(S1 & ~S2 & I);
assign Y4=(S1 & S2 & I);
endmodule

