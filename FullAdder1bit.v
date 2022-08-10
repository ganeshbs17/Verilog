module full_adder(sum, cout, x, y, cin);

input x, y, cin;
output  sum, cout;
  
  assign sum=x ^ y ^ cin;
  assign cout=(x&y)|(x&cin)| (y&cin);
  
  
endmodule
