`timescale 1ns/1ps
module halfsubtractor_struct_tb;
  reg A,B;
  wire D,Bout;

  halfsubtractor_struct dut(A,B,D,Bout);
          initial begin
      $dumpfile("hss.vcd");
      $dumpvars(0, halfsubtractor_struct_tb);
      $display(" A B | D Bout");
      $monitor(" %b %b |%b %b",A,B,D,Bout);
   #10 A=0  ; B=0  ;
   #10 A=0  ; B=1  ;
   #10 A=1  ; B=0  ;
   #10 A=1  ; B=1  ;
    end
endmodule
