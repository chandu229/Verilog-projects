
module demux2_1(I,S,Y1,Y2);
input I,S;
output Y1,Y2;
assign Y1 = (~S & I);
assign Y2 = (S & I);
endmodule
