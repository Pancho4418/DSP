x = 0.2 * ones(1, 5);
n = [0 : 4];
w = [0 : 0.01 : 1] * pi;
[X] = dtft(x, n, w);
subplot 221; plot(w/pi, abs(X));
xlabel('frec. ang. en múltiplos de Pi');
title('Magnitud'); grid