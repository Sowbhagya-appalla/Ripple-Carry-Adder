`include "assignm2.v"
module assignm2_tb;  
reg [15:0] a,b;
wire [15:0] sum,c;
wire carry;
wire [17:0]sum_final; 
ripple mod16(a,b,c,sum,carry,sum_final);
initial
begin

$dumpfile("assi.vcd");
$dumpvars(0,assignm2_tb);

a=16'b1001111011111011;
b=16'b1111001100011000; 

#2
a=16'b1101111011111011;

#4
b=16'b1011001100011000;  

#6
a=16'b1111111011111011;
b=16'b1111001100011110;   

end
always
begin

#20 $finish;
end 
initial
$monitor($time,"a=%d,b=%d,sum_final=%d",a,b,sum_final);

endmodule