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

#Quantization
bit = 3; #Number of bits
qMin = min(sampledSignal);
qMax = max(sampledSignal);
step = (qMax - qMin) / (2^bit);
quantizedSignal = round(sampledSignal/step)*step;

subplot(3, 1, 3);
plot(ts, quantizedSignal);
axis([0 ts(end) qMin-1 qMax+1]);
grid on;
title('Quantized sinusoidal signal');
xlabel('Time(n)');
ylabel('Amplitude');
