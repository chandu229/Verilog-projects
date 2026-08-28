module fulladderstructural_tb;
reg A,B,Cin;
wire sum,carry;
fulladderstructural uut(A,B,Cin,sum,carry);
initial begin
 $display("A B Cin | sum carry");
  $monitor("%b %b  %b  |  %b   %b",A,B,Cin,sum,carry);
  A=0;B=0;Cin=0; #10;
  A=0;B=0;Cin=1; #10;
  A=0;B=1;Cin=0; #10;
  A=0;B=1;Cin=1; #10;
  A=1;B=0;Cin=0; #10; 
  A=1;B=0;Cin=1; #10;
  A=1;B=1;Cin=0; #10;
  A=1;B=1;Cin=1; #10;
 
end
endmodule
