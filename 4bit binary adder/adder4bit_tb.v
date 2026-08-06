// Code your testbench here
// or browse Examples
module adder4bit_tb;
  reg [4:1] A;
  reg [4:1] B;
reg cin;

  wire [4:1] sum;
wire  cout;
  wire [3:1]c;
adder4bit dut (A,B,cin,sum,cout);

initial begin
  $dumpfile("adder4bit.vcd");
  $dumpvars(0, adder4bit_tb);
  
 A=4'b1011;
 B=4'b0011;
 cin=1;
  #10;
  $display(" A=%b,B=%b,cin=%b,sum=%b,cout=%b",A,B,cin,sum,cout);

end
endmodule
