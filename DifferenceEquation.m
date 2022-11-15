clc; #... Clear command line
clear all; #... Clear variables
close all; #... Clear figures

#... Generating a unit impulse signal
n = -3:1:7; #... n = [-3 ... -1 0 1 ... 7]
x = zeros(1,length(n)); #... x = [0 0 0 ... 0 0 0]
index = find(n == 0); #... Index where n=0
x(index) = 1; #... x = [... 0 1 0 ...]
subplot(2,2,1);
stem(n,x,".");
title("Unit sample sequence");
axis tight;

b = [5 0 -4 1]; #... Coefficients of x
a = [1 -2] #... Coefficients of y
