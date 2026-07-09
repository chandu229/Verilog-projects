// Code your testbench here
// or browse Examples
module mux2_1_tb;
  reg I1 ,I2, S;
  wire Y;
  mux2_1 uut (
    .I1(I1),
    .I2(I2),
    .S(S),
    .Y(Y)
  );
  initial begin
    $display("I1 I2 S | Y");
    $monitor(" %b %b %b | %b",I1,I2,S,Y);
    I1=0; I2=0; S=0; #10;
    I1=0; I2=0; S=1; #10;
    I1=0; I2=1; S=0; #10;
    I1=0; I2=1; S=1; #10;
    I1=1; I2=0; S=0; #10;
    I1=1; I2=0; S=1; #10;
    I1=1; I2=1; S=0; #10;
    I1=1; I2=1; S=1; #10;
    $finish;
  end
endmodule
