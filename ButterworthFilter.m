clc; #... Clear command line
clear all; #... Clear variables
close all; #... Clear figures

#... pkg install -forge signal
pkg load signal
#... To install and load butter function in octave

#... A random signal
f = 7;
fs = 350;
t = 0:1/fs:1;
signal = sin(2*pi*f*t);
subplot(4,1,1);
plot(t,signal);
title("Sin signal");

#... Adding noise in the signal
noisySignal = signal+rand(1, length(signal));
subplot(4,1,2);
plot(t,noisySignal);
title("Noisy signal");

#... Performing fft
fftPoint = 2^nextpow2(length(noisySignal)); #... No. of fft point should be 2^n
freDom = abs(fft(noisySignal, fftPoint)); #... Signal in frequency domain
nFft = 0:fftPoint-1;
subplot(4,1,3);
plot(nFft,freDom);
axis tight;
grid on;
title("Frequency");

#... Filtering
order = 5;
wn = [7 13]*2/fs;
[b, a] = butter(order, wn, "bandpass");
#... b = coeffecient of x
#... a = coeffecient of y
filteredSignal = filter(b, a, noisySignal);
subplot(4,1,4);
plot(t,filteredSignal);
axis tight;
title("Signal after filtering");
