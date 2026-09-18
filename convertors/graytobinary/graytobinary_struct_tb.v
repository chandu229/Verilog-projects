`timescale 1ns/1ps
module greytobinary_struct_tb;
wire [3:0]B;
reg [3:0]G;
  greytobinary_struct dut (G,B);

initial begin

 
  $monitor ("G=%b B=%b",G,B);
  $dumpfile("gtbs.vcd");
  $dumpvars(0, greytobinary_struct_tb);
 #10 G=4'b0000;
  #10 G=4'b0001;
  #10 G=4'b0010;
  #10 G=4'b0011;
  #10 G=4'b0100;
  #10 G=4'b0101;
  #10 G=4'b0110;
  #10 G=4'b0111;
  #10 G=4'b1000;
  #10 G=4'b1001;
  #10 G=4'b1010;
  #10 G=4'b1011;
  #10 G=4'b1100;
  #10 G=4'b1101;
  #10 G=4'b1110;
  #10 G=4'b1111;
end
endmodule