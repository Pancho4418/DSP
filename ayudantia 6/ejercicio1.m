% Lee h(n)
load h.txt
% Grafica h(n)
subplot 211;
plot(h, '*'); grid
xlabel('n');
title('h(n)');
% Calcula Mag[H(f)]
f = 0 : 100 : 200000;
M = abs(freqz(h,1,f,176400));
% Grafica Mag[H(f)]
subplot 212;
semilogy(f/1000, M); grid;
axis([0 180 0.000001 10]);
xlabel('f[kHz]');
title('Mag[H(f)]');
