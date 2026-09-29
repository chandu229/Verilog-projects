
module up4bitasync_tb;
  reg clk;
  wire [3:0]q;
  up4bitasync dut (clk,q);
  always #1 clk=~clk;
  initial begin
    $dumpfile("uasnc.vcd");
    $dumpvars(0 ,up4bitasync_tb);
    $monitor("clk=%b q=%b",clk,q);
    clk=0;
    #20$finish;
  end
endmodule
