%Generation of basic signals & illustration of sampling process using Matlab

t = 0:0.001:1;
x1 = 10*cos(2*pi*4*t);
x2 = 20*cos(2*pi*8*t);
x3 = 40*cos(2*pi*16*t);
xc = x1 + x2 + x3;
subplot(2, 1, 1);
plot(t, xc);
xlabel('t(seconds)');
ylabel('x (t)');

T = 1/320;
n = 0:T:1;
x1 = 10*cos(2*pi*4*n) + 20*cos(2*pi*8*n) + 40*cos(2*pi*16*n);
subplot(2, 1, 2);
stem(n, x1, '.');

