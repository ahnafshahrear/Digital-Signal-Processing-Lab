clc; #... Clear command line
clear all; #... Clear variables
close all; #... Clear figures

#... x = input('Enter the first sequence');
#... y = input('Enter the second sequence');
#... Input Formet: [1 3 7 4 9 5]

x = [1 3 2 4];
y = [2 1 2];
yNeg = fliplr(y);

z = [];
for i = 1:length(x)
  temp = yNeg.*x(i);
  z = [z;temp];
end

[r c] = size(z);
ans = zeros(1,r+c-1);

for i = 1:r
  for j = 1:c
    ans(i+j-1) = ans(i+j-1)+z(i,j);
  endfor
endfor

disp(ans);
n = -(length(y)-1):length(x)-1;
stem(n, ans);


