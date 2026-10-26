primitive udp_not_gate(Y,A);
  input A;
  output Y;
  table
    //A : Y;
    1 : 0;
    0 : 1;
  endtable
endprimitive
