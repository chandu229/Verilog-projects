
`timescale 1ns/1ps

module halfadder_tb;

    
    reg a, b;
    wire sum, carry;

    halfadder uut (a,b,sum,carry);
        
    

   
    initial begin
        $display("a b | sum carry");
       $monitor("%b %b |  %b    %b", a, b, sum, carry);
      $dumpfile("halfadder.vcd");
      $dumpvars(0,halfadder_tb);

        a = 0; b = 0; #10;
        

        a = 0; b = 1; #10;
        

        a = 1; b = 0; #10;
        

        a = 1; b = 1; #10;
       

      
    end

endmodule
