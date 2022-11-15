clc; #... Clear command line
clear all; #... Clear variables
close all; #... Clear figures

n = 0:1/80:1;
h = 5*sin(2*pi*4*n);
x = 7*sin(2*pi*3*n);

z = []; #... To store values of x*h
for i = 1:length(x)
  xh = h.*x(i); #... Multiply x(i) with all values of h
  z = [z; xh]; #... Store xh in the next row of z
endfor

[r c] = size(z); #... Row & column of z
startSum = 2; #... To determines the terms of first value
lastSum = r+c; #... To determines last value
ans = []; #... Convolution result will be stored here

while (startSum <= lastSum)
  sum = 0;
  for i = 1:r
    for j = 1:c
      if ((i+j)==startSum)
        sum = sum+z(i,j);
      endif
    endfor
  endfor
  startSum = startSum+1; #... For next value
  ans = [ans sum]; #... Store sum in the back of ans
end

z1 = 2; #... 0©th index of x
z2 = 3; #... 0©th index of h
index = (z1+z2-1); #... 0©th index of ans
n = -(index-1):length(ans)-index; #... time(n)

disp(ans);
plot(n, ans);
