sampleRate = 500;
samplePeriod = 1/sampleRate;
signalFreq = 20;
nT = 0:samplePeriod:3;
signal = cos(2*pi*signalFreq*nT);

figure
stem(nT, signal)
grid on
xlabel('Time (sec)')
ylabel('Amplitude')