`timescale 1ns/1ps
module mux2_1struct_tb;
reg I1,I2,S;
wire Y;
mux2_1struct dut (I1,I2,S,Y);
initial begin
        I1=1; I2=0;
	$display(" the inputs are I1 and I2");
	$monitor ("%b %b ",I1,I2);

	$display(" S | Y ");
	$monitor(" %b | %b ",S,Y);
 #10 S=1;
 #10 S=0;
end 
endmodule	
