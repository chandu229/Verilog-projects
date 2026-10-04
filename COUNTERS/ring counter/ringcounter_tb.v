module ringcounter_tb;
reg clk,reset;
wire [3:0]q;
ringcounter dut(clk,reset,q);
initial begin
reset=1;
#5 reset=0;
end
always #1 clk=~clk;
initial begin
$monitor ("clk=%b q=%b",clk,q);
clk=0;
#20 $finish;
end
endmodule
