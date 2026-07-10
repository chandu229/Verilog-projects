module mux4_1_tb;
reg I1,I2,I3,I4;
reg S1,S2;
wire Y;
mux4_1 uut (
	.I1(I1),
	.I2(I2),
	.I3(I3),
	.I4(I4),
	.S1(S1),
	.S2(S2),
 	.Y(Y)
	);
 initial begin 
	$dumpfile("wave.vcd");
	$dumpvars(0, mux4_1_tb);
 	$display("I1I2I3I4S1S2|Y");
	$monitor("%b %b %b %b %b %b |%b",I1, I2, I3, I4, S1, S2, Y);
	
 
	I1=0; I2=0; I3=1; I4=1;

	S1=0; S2=0; #10;
	S1=0; S2=1; #10;
	S1=1; S2=0; #10;
	S1=1; S2=1; #10;
	
	$finish;
	end
endmodule 
	
