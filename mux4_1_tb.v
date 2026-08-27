`timescale 1ns/1ps
module mux4_1_tb;
reg I1,I2,I3,I4,S1,S2;
wire Y;
mux4_1 dut(I1,I2,I3,I4,S1,S2,Y);
initial begin
        I1=1; I2=0; I3=1; I4=0;
	$display(" the inputs are I1=%b I2=%b I3=%b I4=%b",I1,I2,I3,I4);
	

	$display(" S1 S2 | Y ");
	$monitor(" %b %b | %b ",S1,S2,Y);
 #10 S1=0; S2=0;
 #10 S1=0; S2=1;
#10 S1=1 ;S2=0;
#10 S1=1 ;S2=1;
end 
endmodule	
