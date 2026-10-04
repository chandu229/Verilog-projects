`timescale 1ns/1ps
module encoder4x2_tb;
reg [3:0]I;
wire A,B;
encoder4x2 dut (I,A,B);
initial begin
$monitor ("I[3]=%b I[2]=%b I[1]=%b I[0]=%b A=%b B=%b",I[3],I[2],I[1],I[0],A,B);
#10 I=4'b0001;
#10 I=4'b0010;
#10 I=4'b0100;
#10 I=4'b1000;
end
endmodule

