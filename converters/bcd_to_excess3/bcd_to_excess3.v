module bcd_to_excess3(bcd,exe3);
input [3:0] bcd;
output reg [3:0] exe3;


always @(*)
if (bcd<=9)begin
    exe3=bcd+4'b0011;
end
else  exe3=4'bxxxx;


endmodule