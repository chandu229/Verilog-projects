module d_ff_tb;
reg D,clk,reset;
wire Q;
d_ff dut (D,Q,clk,reset);
always #5 clk=~clk;
initial begin
    reset=1;clk=0;D=0;
$monitor("clk=%b D=%b Q=%b",clk,D,Q );
#6 reset=0; 
#10 ; D=0;
#10 ; D=1;
#10 ; D=0;
#10 ; $finish;
end
endmodule