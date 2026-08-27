`timescale 1ns/1ps
module greytobinary_tb;
wire B1,B2,B3,B4;
reg G1,G2,G3,G4;
greytobinary dut (G1,G2,G3,G4,B1,B2,B3,B4);

initial begin

 $display("G1 G2 G3 G4 | B1 B2 B3 B4 ");
$monitor ("%b %b %b %b | %b %b %b %b",G1,G2,G3,G4,B1,B2,B3,B4);
	
#1 G1=0; G2=0; G3=0;G4=0;
#1 G1=0; G2=0; G3=0;G4=1;
#1 G1=0; G2=0; G3=1;G4=0;
#1 G1=0; G2=0; G3=1;G4=1;
#1 G1=0; G2=1; G3=0;G4=0;
#1 G1=0; G2=1; G3=0;G4=1;
#1 G1=0; G2=1; G3=1;G4=0;
#1 G1=0; G2=1; G3=1;G4=1;
#1 G1=1; G2=0; G3=0;G4=0;
#1 G1=1; G2=0; G3=0;G4=1;
#1 G1=1; G2=0; G3=1;G4=0;
#1 G1=1; G2=0; G3=1;G4=1;
#1 G1=1; G2=1; G3=0;G4=0;
#1 G1=1; G2=1; G3=0;G4=1;
#1 G1=1; G2=1; G3=1;G4=0;
#1 G1=1; G2=1; G3=1;G4=1;
end
endmodule
