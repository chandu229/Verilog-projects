module ringcounter_tb;
reg clk;
wire [0:3]q;
ringcounter dut(clk,q);
always #1 clk=~clk;
initial begin

$monitor ("clk=%b q=%b",clk,q);
clk=0;
#20 $finish;
end
endmodule
