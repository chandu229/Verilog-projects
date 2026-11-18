module pipo_reg_tb;
reg [3:0]I;
reg clk,reset;
wire [3:0]Y;
pipo_reg dut (I,Y,clk,reset);
always #2 clk=~clk;
initial begin
    I=4'b0;clk=0;reset=1;
    $monitor("I=%b Y=%b ",I,Y);
    #3; reset =0;
    #5; I=1011;
    #3; reset=1;
    #3; reset=0;
    #6; I=1101;
    #6;$finish;
end
endmodule