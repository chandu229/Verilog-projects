module jk_ff_tb;
reg J,K,clk;
wire Q;
jk_ff dut (J,K,clk,Q);
always #5 clk=~clk;
initial begin
$monitor("J=%b K=%b Q=%b clk=%b",J,K,Q,clk);
J=0;K=0;clk=0;
#10 J=1;k=0;
#10 J=0;k=0;
#10 J=1;k=1;
#10 J=1;k=0;
#20 $finish;
end
endmodule
