module t_ff_tb;
reg T,clk;
wire Q;
t_ff dut (T,clk,Q);
  initial
    clk=0;
always #5 clk = ~clk;
initial begin
  $dumpfile("tff.vcd");
  $dumpvars(0, t_ff_tb);
  $monitor ("T=%b  Q=%b clock=%b",T,Q,clk);
T=0;

#10 T=0;
#10 T=1;
#10 T=0;
#10 T=1;
  $finish;
end
 
endmodule