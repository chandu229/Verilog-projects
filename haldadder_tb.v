
`timescale 1ns/1ps

module halfadder_tb;

    // Testbench signals
    reg a, b;
    wire sum, carry;

    // Instantiate the Half Adder
    halfadder uut (a,b,cin,sum,carry);
        
    

    // Apply test vectors
    initial begin
        $display("a b | sum carry");
        $display("----------------");

        a = 0; b = 0; #10;
        $display("%b %b |  %b    %b", a, b, sum, carry);

        a = 0; b = 1; #10;
        $display("%b %b |  %b    %b", a, b, sum, carry);

        a = 1; b = 0; #10;
        $display("%b %b |  %b    %b", a, b, sum, carry);

        a = 1; b = 1; #10;
        $display("%b %b |  %b    %b", a, b, sum, carry);

        $finish;
    end

endmodule