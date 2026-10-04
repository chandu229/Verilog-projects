`timescale 1ns/1ps
module decoder2x4_tb;
wire [3:0]Y;
reg A,B;
decoder2x4 dut (Y,A,B);
initial begin
$monitor ("A=%b B=%b Y[3]=%b Y[2]=%b Y[1]=%b Y[0]=%b",A,B,Y[3],Y[2],Y[1],Y[0]);
#10 A=0; B=0;
#10 A=0; B=1;
#10 A=1; B=0;
#10 A=1; B=1;
end
endmodule
