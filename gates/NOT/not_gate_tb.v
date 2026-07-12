module not_gate_tb;
	reg A;
	wire Y;
  not utt(Y,A);

	initial begin
	$dumpfile("not.vcd");
	$dumpvars(0, not_gate_tb);
	  $display("A | Y");
	  $monitor("%b | %b",A,Y);
	A=0; #10;
	A=1; #10;
	  $finish;
    end 
  endmodule

