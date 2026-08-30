module demux2_1_tb;
reg I,S;
wire Y1,Y2;

demux2_1 dut(I,S,Y1,Y2);

        initial begin
                $dumpfile("dm.vcd");
                $dumpvars(0, demux2_1_tb);
        I=1;
        $display("the input I is ",I);
        $display(" S | Y1 Y2");
        $monitor(" %b | %b %b",S,Y1,Y2);
        #10 S=0;
        #10 S=1;
       #40  I=0;

         $display("the input I is ",I);
        $display(" S | Y1 Y2");
        $monitor(" %b | %b %b",S,Y1,Y2);
        #10 S=0;
        #10 S=1;

 end
endmodule