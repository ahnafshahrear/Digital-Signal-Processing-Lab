clc
clear all
close all

%Sinwave
f = 5;
a = 12;
t = 0:0.005:1;
analogSin = a*sin(2*pi*f*t);
subplot(2, 2, 1);
plot(t, analogSin);
title('Continuous sinwave');

#Sampled sin wave with fs = 2*f
fs = f*2;
ts = 0:1/fs:1;
sampledSin = a*sin(2*pi*f*ts);
subplot(2, 2, 2);
grid on;
stem(ts, sampledSin, '.');
hold on;
title('Sampled sinwave');

#Under sampled sin wave with fs < 2*f
fs = 3;
ts = 0:1/fs:1;
underSampled = a*sin(2*pi*f*ts);
subplot(2, 2, 3);
stem(ts, underSampled, '.');
title('Under sampled sinwave');

#Over sampled sin wave with fs > 2*f
fs = f*10;
ts = 0:1/fs:1;
overSampled = a*sin(2*pi*f*ts);
subplot(2, 2, 4);
stem(ts, overSampled, '.');
title('Over sampled sinwave');


