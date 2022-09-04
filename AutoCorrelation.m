clc;
clear all;
close all;

x = input('Enter the first sequence');
#... Input Formet: [1 3 7 4 9 5]

xNeg = [];

for i = length(x):-1:1
  xNeg = [xNeg x(i)];
end

z = [];
for i = 1:length(x)
  temp = xNeg.*x(i);
  z = [z;temp];
end

ans = [];
[r c] = size(z);
start = 2;
endIndex = r+c;
sum = 0;
while(start <= endIndex)
  for i = 1:r
    for j = 1:c
      if ((i+j)==start)
        sum = sum + z(i,j);
      endif
    endfor
  endfor
  ans = [ans sum];
  sum = 0;
  start = start + 1;
end

disp(ans);
#x = 1:length(ans);
#stem(x,ans);


