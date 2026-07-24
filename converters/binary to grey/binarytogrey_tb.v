module binartogrey_tb;
input B1,B2,B3,B4;
wire G1,G2,G3,G4;
binarytogrey dut (B1,B2,B3,B4,G1,G2,G3,G4);
initial begin
    $dumpfile("BtoG.vcd");
    $dumpvars(0, binartogrey_tb);
    $display ("B1 B2 B3 B4 | G1 G2 G3 G4");
    $monitor ("%b %b %b %b | %b %b %b %b",B1,B2,B3,B4,G1,G2,G3,G4);
    #1 B1=0;B2=0;B3=0;B4=0;
    #1 B1=0;B2=0;B3=0;B4=1;
    #1 B1=0;B2=0;B3=1;B4=0;
    #1 B1=0;B2=0;B3=1;B4=1;
    #1 B1=0;B2=1;B3=0;B4=0;
    #1 B1=0;B2=1;B3=0;B4=1;
    #1 B1=0;B2=1;B3=1;B4=0;
    #1 B1=0;B2=1;B3=1;B4=1;
    #1 B1=1;B2=0;B3=0;B4=0;
    #1 B1=1;B2=0;B3=0;B4=1;
    #1 B1=1;B2=0;B3=1;B4=0;
    #1 B1=1;B2=0;B3=1;B4=1;
    #1 B1=1;B2=1;B3=0;B4=0;
    #1 B1=1;B2=1;B3=0;B4=1;
    #1 B1=1;B2=1;B3=1;B4=0;
    #1 B1=1;B2=1;B3=1;B4=1;
    
end
endmodule