module or_gate_tb;
	reg A,B;
	wire Y;
	or_gate utt (.Y(Y),
				.A(A),
				.B(B)
	);
	initial begin
	 $dumpfile("orgatewave.vcd");
	 $dumpvars(0, or_gate_tb);
	

	$display("A B | Y");
	$monitor("%b %b | %b",A,B,Y);
	
	A=0;B=0; #10;
	A=0;B=1; #10;
	A=1;B=0; #10;
	A=1;B=1; #10;
       $finish;
	end 
endmodule	

