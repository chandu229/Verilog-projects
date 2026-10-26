primitive udp_nand_gate(Y,A,B);
  input A,B;
  output Y;
  table
    // A B : Y;
    1 1 : 0;
    1 ? : 1;
    ? 1 : 1;
  endtable
endprimitive
