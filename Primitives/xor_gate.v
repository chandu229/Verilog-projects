primitive udp_xor_gate(Y,A,B);
  input A,B;
  output Y;
  table
    //A B : Y;
    1 1 : 0;
    0 0 : 0;
    1 0 : 1;
    0 1 : 1;
    x ? : x;
    ? x : x;
  endtable
endprimitive
