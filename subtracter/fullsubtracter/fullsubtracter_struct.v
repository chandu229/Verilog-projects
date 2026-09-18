module fullsubtractor_struct(A,B,Bin,D,Bout);
  input A,B,Bin;
  output D,Bout;
  wire x,y,z;
  xor (D,A,B,Bin);
  and (x,~A,B);
  and (y,~A,Bin);
  and (z,B,Bin);
  or (Bout,x,y,z);
endmodule
