module bcd_to_excess3_tb;
reg [3:0]bcd;
wire [3:0]exe3;
bcd_to_excess3 dut (bcd,exe3);
integer i;
initial 
begin
   for(i=0;i<=15;i=i+1)begin
    bcd=i;
  
     $monitor("bcd=%b exe3=%b",bcd,exe3);
       #10;
    end
end
endmodule