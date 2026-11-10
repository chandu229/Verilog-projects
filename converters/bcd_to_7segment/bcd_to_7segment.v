module bcd_to_7seg(I,Y);
input [3:0]I;
output reg [6:0]Y;
always@(*)
begin
    case (I)
    1 : Y=7'b0000110;
    2 : Y=7'b1011011;
    3 : Y=7'b1001111;
    4 : Y=7'11011110;
    5 : Y=7'11011101;
    6 : Y=7'11111101;
    7 : Y=7'b0001111;
    8 : Y=7'b1111111;
    9 : Y=7'b1100111;
    default : Y=1111001;
    endcase
end 
endmodule
