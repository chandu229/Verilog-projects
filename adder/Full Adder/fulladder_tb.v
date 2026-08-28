`timescale 1ns/1ns
module fulladder_tb;
reg a,b,cin;
wire sum,carry;
fulladder dut (a,b,cin,sum,carry);
 initial begin
   $dumpfile("fulladder.vcd");
   $dumpvars(0,fulladder_tb);
  $display("a b cin | sum carry");
  $monitor("%b %b  %b  |  %b   %b",a,b,cin,sum,carry);
  a=0;b=0;cin=0; #10;
  a=0;b=0;cin=1; #10;
  a=0;b=1;cin=0; #10;
  a=0;b=1;cin=1; #10;
  a=1;b=0;cin=0; #10; 
  a=1;b=0;cin=1; #10;
  a=1;b=1;cin=0; #10;
  a=1;b=1;cin=1; #10;
 
end
endmodule
