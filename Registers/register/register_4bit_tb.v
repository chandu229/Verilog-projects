module register_4bit_tb;
reg [3:0]D;
reg reset,clk;
wire [3:0]Q;
register_4bit dut (D,Q,clk,reset);
always #5 clk=~clk;
initial begin
    clk=0;D=0;reset=1;
    $monitor("D=%b Q=%b clk=%b reset=%b ",D,Q,clk,reset);
#10 reset=0;
D=4'b1011; #15;
D=4'b1110; #5;
$finish;
end
endmodule
