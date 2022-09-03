clc;
clear all;
close all;

t = 0:0.0005:1; #Defining the signal duration for ploting
f = 2; #Sin wave frequency = 2Hz
a = 20; #Sin wave amplitude
analogSignal = a*sin(2*pi*f*t);
subplot(3, 1, 1);
plot(t, analogSignal);
#axis([0 t(end) -a-1 a+1]);
grid on;
title('Continuous sinusoidal signal');
xlabel('Time(s)');
ylabel('Amplitude');

fs = 80; #Sampling frequency = 8Hz
ts = 0:1/fs:1; #Time index
sampledSignal = a*sin(2*pi*f*ts);
subplot(3, 1, 2);
plot(ts, sampledSignal);
#axis([0 t(end) -a-1 a+1]);
grid on;
hold on;
stem(ts, sampledSignal, '.');
title('Sampled sinusoidal signal');
xlabel('Time(n)');
ylabel('Amplitude');

nSamples = length(sampledSignal); #Total number of samples
quantizedSignal = zeros(1, nSamples); #Making an array of size = nSamples
bit = 3;
stepSize = 2*a/(2^bit); #Calculating the step size
low = -a+stepSize/2;
high = a-stepSize/2;
for i = low:stepSize:high
  for j = 1:nSamples
    if (((i - stepSize/2)<=sampledSignal(j)) && (sampledSignal(j)<=(i+stepSize/2)))
      quantizedSignal(j) = i;
    endif
  endfor
endfor
disp(quantizedSignal);

subplot(3, 1, 3);
plot(ts, quantizedSignal);
axis([0 t(end) -a-1 a+1]);
grid on;
title('Quantized sinusoidal signal');
xlabel('Time(n)');
ylabel('Amplitude');
