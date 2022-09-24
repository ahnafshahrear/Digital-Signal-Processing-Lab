clc;
clear all;
close all;

#... Discrete Fourier Transform

xInput = ones(1, 7);
nPoint = 160;
xLength = length(xInput);

if (nPoint < xLength)
  error("Can©t perform dft");
endif

xInput = [xInput zeros(1, nPoint-xLength)];

for k = 0:nPoint-1
  xD(k+1) = 0;
  for n = 0:nPoint-1
    xD(k+1) = xD(k+1)+xInput(n+1)*exp(-i*2*pi*k*n/nPoint);
  endfor
endfor

n = 0:nPoint-1;
subplot(3,1,1);
plot(n,abs(xD));
axis tight;
title("Magnitude spectrum");

subplot(3,1,2);
plot(n,angle(xD));
axis tight;
title("Angle spectrum");

#... Inverse Discrete Fourier Transform

for k = 0:nPoint-1
  xInv(k+1) = 0;
  for n = 0:nPoint-1
    xInv(k+1) = xInv(k+1)+xD(n+1)*exp(i*2*pi*n*k/nPoint);
  endfor
  xInv(k+1) = xInv(k+1)/nPoint;
endfor

n = 0:nPoint-1;
disp(xInv);
subplot(3,1,3);
stem(n, xInv);
axis tight;


