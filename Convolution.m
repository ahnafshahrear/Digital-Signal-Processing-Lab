clc;
clear all;
close all;

x = input('Enter the first sequence');
h = input('Enter the second sequence');

z = [];
for i = 1:length(x)
  temp = h.*x(i);
  z = [z;temp];
end

[r c] = size(z);
lastIndex = r+c;
startIndex = 2;
ans = [];
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
disp(ans);
