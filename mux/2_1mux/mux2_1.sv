// Code your design here
module mux2_1 (I1,I2,S,Y);
  input I1,I2,S;
  output Y;
  assign Y = (~S&I1)|(S&I2);
  endmodule
