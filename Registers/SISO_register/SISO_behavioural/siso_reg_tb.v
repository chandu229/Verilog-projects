module siso_reg_tb;
reg I,clk,reset;
wire Y;
siso_reg dut (I,Y,clk,reset);
always #1 clk=~clk;
initial begin
    I=0;clk=0;reset=1;
    $monitor ("I=%b Y=%b",I,Y,);
    #2 reset=0;
    #2 I=1;
    #2 I=0;
    #2 I=1;
    #2 I=0;
    #10 $finish;
end
endmodule