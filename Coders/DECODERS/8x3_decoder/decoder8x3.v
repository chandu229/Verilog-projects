module decoder8x3(A,B,C,I);
  input A,B,C;
  output [7:0]I;
  always @(*)
    begin
      case [A,B,C]
        3'b000 : I = 8'b00000001;
        3'b001 : I = 8'b00000010;
        3'b010 : I = 8'b00000100;
        3'b011 : I = 8'b00001000;
        3'b100 : I = 8'b00010000;
        3'b101 : I = 8'b00100000;
        3'b110 : I = 8'b01000000;
        3'b111 : I = 8'b10000000;
      endcase
    end
endmodule
