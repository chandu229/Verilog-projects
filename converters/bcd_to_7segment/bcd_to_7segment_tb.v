module bcd_to_7seg_tb;
reg [3:0]I;
wire [6:0]Y;
bcd_to_7seg dut (I,Y);
integer i;
initial begin
    
    for (i=0 ; i<=15 ; i=i+1) begin
        I=i;
        #5;
        $display("I=%b Y=%b",I,Y);
    end
end
endmodule
    
