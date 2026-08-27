module halfadderstruct_tb;
reg A,B;
wire sum,carry;
halfadderstruct dut (A,B,sum,carry);
initial begin
$display("A B | sum carry");
$monitor("%b %b |%b %b",A,B,sum,carry);

#1 A=0 ; B=0 ;
#10 A=0 ; B=1 ;
#10 A=1 ; B=0 ;
#10 A=1 ; B=1 ;
end 
endmodule