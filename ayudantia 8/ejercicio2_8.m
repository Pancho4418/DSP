clear;
clc;
x = audioread('avioneta.wav');
Fs = 22050; % frecuencia de muestreo
M = 4096; % tamaño del segmento
T = M/2; % traslapo
x = x - mean(x);
[P, f] = pwelch(x, hamming(M), T, M, Fs);
semilogy (f, P,'b');hold on;
clear;
x = audioread('avioneta.wav');
Fs = 22050; % frecuencia de muestreo
M = 22050; % tamaño del segmento
T = M/2; % traslapo
x = x - mean(x);
[P, f] = pwelch(x, hamming(M), T, M, Fs);
semilogy (f, P,'r');hold on;
clear;
x = audioread('avioneta.wav');
Fs = 22050; % frecuencia de muestreo
M = 65536; % tamaño del segmento
T = M/2; % traslapo
x = x - mean(x);
[P, f] = pwelch(x, hamming(M), T, M, Fs);
semilogy (f, P,'g');xlabel('Muestras');ylabel('Magnitud');axis([10 200 1e-6 1]);hold on;
title('PSD con 4096(Azul),22050(Rojo )y 65536(Verde)muestras');grid;