
module up4bitasync_tb;
  reg clk,reset;
  wire [3:0]q;
  up4bitasync dut (clk,reset,q);
initial begin
clk=0;
reset=1;
#2 reset = 0;
end
  always #1 clk=~clk;
  initial begin
    $dumpfile("uasnc.vcd");
    $dumpvars(0 ,up4bitasync_tb);
    $monitor("clk=%b q=%b",clk,q);
    clk=0;
    #20$finish;
  end
endmodule
