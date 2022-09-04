clc;
clear all;
close all;

#... x = input('Enter the first sequence');
#... h = input('Enter the second sequence');
#... Input Formet: [1 3 7 4 9 5]

h = [1 2 3 4];
x = [2 1 2];

z = [];
for i = 1:length(x)
  temp = h.*x(i);
  z = [z;temp];
end

[r c] = size(z);
startIndex = 2;
lastIndex = r+c;
ans = []; #... Convolution will be stored here
sum = 0;

while(startIndex <= lastIndex)
  for i = 1:r
    for j = 1:c
      if ((i+j)==startIndex)
        sum = sum+z(i,j);
      endif
    endfor
  endfor
  startIndex = startIndex+1;
  ans = [ans sum];
  sum = 0;
end

z1 = 2; #... 0'th index of x
z2 = 3; #... 0'th index of h
index = (z1+z2-1); #... 0'th index of convolution
n = -(index-1):1:length(ans)-index;

disp(ans);
stem(n, ans);
