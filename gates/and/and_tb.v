module and_tb;
	reg A,B;
	wire Y;
	and uut(Y, A, B);
	   initial begin
	$dumpfile("wave.vcd");
	$dumpvars(0,and_tb);
	$display("A B | Y");
	$monitor("%b %b | %b",A,B,Y);
	A=0; B=0; #10;
	A=0; B=1; #10;
	A=1; B=0; #10;
	A=1; B=1; #10;
 	   $finish;
        end 
endmodule
