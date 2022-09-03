clc;
clear all;
close all;

n = -3:1:7;
index = find(n==0);
x = zeros(1,length(n));
x(index) = 1;
%x = rand(1, length(n));
subplot(2,2,1)
stem(n,x,'.')
axis tight

b = [5 0 -4 1]; %Coeffecients of x
a = [1 -2]; %Coeffecients of y
y = filter(b,a,x);
subplot(2,2,2);
stem(n,y,'.');
axis tight
%1y(n)-2y(n-1)=5x(n)-4x(n-2)+x(n-3)

%Without filter function
y1 = zeros(1,length(n));
for i = 1:length(n)
    if(n(i)<0)
        y1(i) = 0;
    end
    if(n(i)>=0)
        y1(i) = 2*y1(i-1)+5*x(i)-4*x(i-2)+x(i-3);
        y1(i) = abs(y1(i));
    end
end

subplot(2,2,3)
stem(n,y1,'.')
axis tight

maxValue = max(y1)
normalized = y1/maxValue;
subplot(2,2,4);
stem(n,normalized,'.')
