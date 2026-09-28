
module sr_ff_tb;
reg R,S,clk;
wire Q;
sr_ff dut(S,R,clk,Q);
always #5 clk=~clk;
initial begin
$monitor("S=%b R=%b Q=%b clk=%b",S,R,Q,clk);
clk=0;S=0;R=0;
#10 S=0;R=1;
#10 S=1;R=0;
#10 S=0;R=0;
#10 S=1;R=1;
#10 $finish;
end 
endmodule