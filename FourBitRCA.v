module full_adder(sum, cout, x, y, cin);

input x, y, cin;
output  sum, cout;  
  assign sum=x ^ y ^ cin;
  assign cout=(x&y)|(x&cin)| (y&cin);  
endmodule

module rca_adder_4 (sum, Cout, x, y, Cin);
input [3:0] x, y;
input Cin;
output [3:0] sum;
output Cout;
  
  wire w1,w2,w3;
  
  full_adder ha1(sum[0],w1,x[0],y[0],Cin);
  full_adder ha2(sum[1],w2,x[1],y[1],w1);
  full_adder ha3(sum[2],w3,x[2],y[2],w2);
  full_adder ha4(sum[3],Cout,x[3],y[3],w3);
  
endmodule 
 
