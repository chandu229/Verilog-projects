module mux8x1_tb;
reg [7:0]I;
reg [2:0]S;
wire Y;
integer i;
mux8x1 dut (I,S,Y);
initial begin
I=8'b10110100;

for (i=0; i<=7; i=i+1)
begin
$display ("I[i]=%b",I[i]);
end
for (i=0; i<=2; i=i+1)
begin
$monitor ("S[i]=%b",S[i]);
end
#10 S=3'b000;
#10 S=3'b001;
#10 S=3'b010;
#10 S=3'b011;
#10 S=3'b100;
#10 S=3'b101;
#10 S=3'b110;
#10 S=3'b111;
end
endmodule