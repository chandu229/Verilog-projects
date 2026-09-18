`timescale 1ns/1ps
module fullsubtractor_struct_tb;
  reg A,B,Bin;
  wire D,Bout;
 
  fullsubtractor_struct dut(A,B,Bin,D,Bout);
  initial begin
      $dumpfile("fss.vcd");
      $dumpvars(0, fullsubtractor_struct_tb);
      $display(" A B Bin | D Bout");
      $monitor(" %b %b %b  | %b %b",A,B,Bin,D,Bout);
   #10 A=0  ; B=0 ; Bin=0 ;
   #10 A=0  ; B=0 ; Bin=1 ;
   #10 A=0  ; B=1 ; Bin=0 ;
   #10 A=0  ; B=1 ; Bin=1 ;
   #10 A=1  ; B=0 ; Bin=0 ;
   #10 A=1  ; B=0 ; Bin=1 ;
   #10 A=1  ; B=1 ; Bin=0 ;
   #10 A=1  ; B=1 ; Bin=1 ;
 
    end
endmodule