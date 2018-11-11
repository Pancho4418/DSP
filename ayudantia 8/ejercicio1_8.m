clear;
clc;
N = 2048; n = [0 : N-1];
x = 0.08 * cos(2*pi * 49 * n/N) +cos(2*pi * 51.6 * n/N) +cos(2*pi * 52.36 * n/N) + 0.003 * cos(2*pi * 60 * n/N);
% FFT con ventana rectangular
Mr = (2/N) * abs(fft(x));
% FFT con ventana Hamming
xm = x .* hamming(N)';
M = mean(hamming(N)); % factor de atenuación de la ventana
Mm = (1/M) * (2/N) * abs(fft(xm));
% FFT con ventana Hanning
xn = x .* hanning(N)';
M = mean(hanning(N)); % factor de atenuación de la ventana
Mn = (1/M) * (2/N) * abs(fft(xn));
% FFT con ventana Blackman
xb = x .* blackman(N)';
M = mean(blackman(N)); % factor de atenuación de la ventana
Mb = (1/M) * (2/N) * abs(fft(xb));
subplot 421; k = [0 : N-1]; semilogy(k, Mr); axis([40 65 0.001 1]);
grid; title('Rectangular con 2048 muestras');hold on; ylabel('Mag')
subplot 423; semilogy(k, Mm);hold on; axis([40 65 0.001 1]);
grid; title('Hamming con 2048 muestras');hold on; ylabel('Mag')
subplot 425; semilogy(k, Mn);hold on; axis([40 65 0.001 1]);
grid; title('Hanning con 2048 muestras');hold on; xlabel('k'); ylabel('Mag')
subplot 427; semilogy(k, Mb);hold on; axis([40 65 0.001 1]);
grid; title('Blackman con 2048 muestras'); xlabel('k'); ylabel('Mag')
clear;
N = 20480; n = [0 : N-1];
x = 0.08 * cos(2*pi * 490 * n/N) + cos(2*pi * 516 * n/N) + cos(2*pi * 523.6 * n/N) + 0.003 * cos(2*pi * 600 * n/N);
% FFT con ventana rectangular
Mr = (2/N) * abs(fft(x));
% FFT con ventana Hamming
xm = x .* hamming(N)';
M = mean(hamming(N)); % factor de atenuación de la ventana
Mm = (1/M) * (2/N) * abs(fft(xm));
% FFT con ventana Hanning
xn = x .* hanning(N)';
M = mean(hanning(N)); % factor de atenuación de la ventana
Mn = (1/M) * (2/N) * abs(fft(xn));
% FFT con ventana Blackman
xb = x .* blackman(N)';
M = mean(blackman(N)); % factor de atenuación de la ventana
Mb = (1/M) * (2/N) * abs(fft(xb));
subplot 422; k = [0 : N-1]; semilogy(k, Mr); axis([400 650 0.001 1]);
grid; title('Rectangular con 20480 muestras'); ylabel('Mag')
subplot 424; semilogy(k, Mm); axis([400 650 0.001 1]);
grid; title('Hamming con 20480 muestras'); ylabel('Mag')
subplot 426; semilogy(k, Mn); axis([400 650 0.001 1]);
grid; title('Hanning con 20480 muestras'); xlabel('k'); ylabel('Mag')
subplot 428; semilogy(k, Mb); axis([400 650 0.001 1]);
grid; title('Blackman con 20480 muestras'); xlabel('k'); ylabel('Mag')