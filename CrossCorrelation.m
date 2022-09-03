clc;
clear all;
close all;

%x = input('Enter the first sequence');
%y = input('Enter the second sequence');
%Input Formet: [1 3 7 4 9 5]

x = [1 3 2 4];
y = [2 1 2];

yNeg = [];

for i = length(y):-1:1
  yNeg = [yNeg y(i)];
end

z = [];
for i = 1:length(x)
  temp = yNeg.*x(i);
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
n = -(length(y)-1):length(x)-1;
stem(n, ans);


