module xnor_gate_tb;
reg A,B;
wire Y;

    xnor_gate dut (A,B,Y);
  initial begin
    
    $dumpfile("xor_gate.vcd");
    $dumpvars(0);
    $display(" A B | Y");
    $monitor(" %b %b | %b ",A,B,Y);

        #1 A=1'b0;
        #1 B=1'b0;

         #1 A=1'b0;
        #1 B=1'b1;

         #1 A=1'b1;
        #1 B=1'b0;

         #1 A=1'b1;
        #1 B=1'b1;
    $finish;
         
        

  end
  endmodule