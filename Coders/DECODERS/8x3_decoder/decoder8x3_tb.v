// Code your testbench here
// or browse Examples
`timescale 1ns/1ps
module decoder8x3_tb;
  reg A,B,C;
  wire [7:0]I;
  decoder8x3 dut (A,B,C,I);
  initial begin
    $dumpfile("d8x3.vcd");
    $dumpvars(0 , decoder8x3_tb);
    $monitor("A=%b B=%b C=%b I=%b",A,B,C,I);
    #1 {A,B,C} = 3'b000;
    #1 {A,B,C} = 3'b001;
    #1 {A,B,C} = 3'b010;
    #1 {A,B,C} = 3'b011;
    #1 {A,B,C} = 3'b100;
    #1 {A,B,C} = 3'b101;
    #1 {A,B,C} = 3'b110;
    #1 {A,B,C} = 3'b111;
      end
endmodule
