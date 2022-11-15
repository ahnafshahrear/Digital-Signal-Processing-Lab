clc; #... Clear command line
clear all; #... Clear variables
close all; #... Clear figures

#... x = input(©Enter the values of x©);
#... h = input(©Enter the values of h©);
#... Input formet = [2 7 3 1 5]

h = [1 2 3 4]; #... Impulse response
x = [2 1 2]; #... Input sequence

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
stem(n, ans, ".");
