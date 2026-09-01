module demux4_1_tb;
reg I,S1,S2;
wire Y1,Y2,Y3,Y4;

demux4_1 dut (I,S1,S2,Y1,Y2,Y3,Y4);

        initial begin
  $dumpfile("demux4.vcd");
  $dumpvars(0, demux4_1_tb);
 I=1;
 $display("The input I is %b",I);
 $display("S1 S2 | Y1 Y2 Y3 Y4");
 $monitor("%b %b | %b %b %b %b ",S1,S2,Y1,Y2,Y3,Y4);
#10 S1=0 ;S2=0;
#10 S1=0 ;S2=1;
#10 S1=1 ;S2=0;
#10 S1=1 ;S2=1;
        end
endmodule