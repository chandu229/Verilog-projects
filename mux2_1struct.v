
module mux2_1struct(I1,I2,S,Y);
input I1,I2,S;
output Y;
wire a,b,c;
not (a,S);
and (b,a,I1);
and (c,S,I2);
or (Y,b,c);
endmodule
