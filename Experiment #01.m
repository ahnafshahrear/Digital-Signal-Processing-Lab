% Unit Step Sequence
N = 21;
x = ones(1, N);
n = 0 : 1 : N - 1;
subplot(2, 3, 1);
stem(n, x);
xlabel("n");
ylabel("x(n)");
title("Unit Step Sequence");

% Expnential Sequence
x2 = 1.2.^(n);
subplot(2, 3, 2);
stem(n, x2);
xlabel("n");
ylabel("x(n)");
title("Exponential Sequence");

% Ramp Sequence
t = 0 : 7;
subplot(2, 3, 3);
stem(t, t);
xlabel("n");
ylabel("x(n)");
title("Ramp Sequence");

% Random Sequence
N = 21;
x = rand(1, N);
n = 0 : 1 : N - 1;
subplot(2, 3, 4);
stem(n, x);
xlabel("n");
ylabel("x(n)");
title("Unit Step Sequence");

% Sinusoidal Signal
t1 = 0:0.001:1;
xSin = 7*sin(2*pi*4*t1);
subplot(2, 3, 5);
plot(t1, xSin);
xlabel("t(seconds)");
ylabel("x(t)");
title("Sinusoidal Signal");







