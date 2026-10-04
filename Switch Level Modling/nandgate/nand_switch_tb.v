`timescale 1ns/1ps
module nand_switch_tb;
reg A,B;
wire Y;
nand_switch dut (A,B,Y);
initial begin
$monitor ("A=%b B=%b Y=%b",A,B,Y);
#10 A=0; B=0;
#10 A=0; B=1;
#10 A=1; B=0;
#10 A=1; B=1;
end
endmodule
