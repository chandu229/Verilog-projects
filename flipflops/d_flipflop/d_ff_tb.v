module dff_tb;
  reg D,clk;
  wire Q;
  dff dut(D,clk,Q);
  initial clk=0;
  always #10 clk = ~clk;
  initial begin
    $monitor("D=%b Q=%b",D,Q);
    $dumpfile("dff.vcd");
    $dumpvars(0, dff_tb);
   
    D=0;
    #10 D=1;
    #10 D=0;
    #10 D=1;
   #10 $finish;
   
  end
endmodule 