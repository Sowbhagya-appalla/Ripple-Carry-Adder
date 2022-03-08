module full_adder(a,b,c,sum,carry);
input a,b,c;
output sum,carry;
assign sum=a^b^c;
assign carry = ((a&b)| (b&c)|(c&a));
endmodule
module ripple(a,b,c,sum,carry);
input [15:0] a,b;
output [15:0] sum;
output [15:0] c;
output carry;

full_adder mod0(a[0],b[0],1'b0,sum[0],c[0]);
full_adder mod1(a[1],b[1],c[0],sum[1],c[1]);
full_adder mod2(a[2],b[2],c[1],sum[2],c[2]);
full_adder mod3(a[3],b[3],c[2],sum[3],c[3]);
full_adder mod4(a[4],b[4],c[3],sum[4],c[4]);
full_adder mod5(a[5],b[5],c[4],sum[5],c[5]);
full_adder mod6(a[6],b[6],c[5],sum[6],c[6]);
full_adder mod7(a[7],b[7],c[6],sum[7],c[7]);
full_adder mod8(a[8],b[8],c[7],sum[8],c[8]);
full_adder mod9(a[9],b[9],c[8],sum[9],c[9]);
full_adder mod10(a[10],b[10],c[9],sum[10],c[10]);
full_adder mod11(a[11],b[11],c[10],sum[11],c[11]);
full_adder mod12(a[12],b[12],c[11],sum[12],c[12]);
full_adder mod13(a[13],b[13],c[12],sum[13],c[13]);
full_adder mod14(a[14],b[14],c[13],sum[14],c[14]);
full_adder mod15(a[15],b[15],c[14],sum[15],c[15]);
assign carry =c[15];
endmodule