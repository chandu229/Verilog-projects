module priority_encoder_tb;
reg [7:0]I;
wire [2:0]Y;
priority_encoder dut (I,Y);
initial begin
    $monitor("I=%b Y=%b",I,Y);
    #10 I=8'b10111001;
    #10 I=8'b00101011;
    #10 I=8'b00000010;
end
endmodule
