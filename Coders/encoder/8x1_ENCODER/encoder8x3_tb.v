module encoder8x3_tb;
  reg [7:0]I;
  wire A,B,C;
  encoder8x3 dut (I,A,B,C);
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0 ,encoder8x3_tb);
    $monitor("I=%b A=%b B=%b C=%b",I,A,B,C);
    #1;  I = 8'b00000001;
    #1;  I = 8'b00000010;
    #1;  I = 8'b00000100;
    #1;  I = 8'b00001000;
    #1;  I = 8'b00010000;
    #1;  I = 8'b00100000;
    #1;  I = 8'b01000000;
    #1;  I = 8'b10000000;
    
  end
endmodule
