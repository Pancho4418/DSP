clc;
clear;
n = -20 : 20; n(21) = 0.001; h = sin((pi/2)*n) ./ (pi*n);
w = 0 : (pi/1000) : pi; H1 = dtft(h, n, w);
subplot 221; plot(w/pi, abs(H1), 'r');
title('-20 a 20');
clear;
n = -40 : 40; n(41) = 0.001; h = sin((pi/2)*n) ./ (pi*n);
w = 0 : (pi/1000) : pi; H1 = dtft(h, n, w);
subplot 222;plot(w/pi, abs(H1), 'r');
title('-40 a 40');
clear;
n = -80 : 80; n(81) = 0.001; h = sin((pi/2)*n) ./ (pi*n);
w = 0 : (pi/1000) : pi; H1 = dtft(h, n, w);
subplot 223;plot(w/pi, abs(H1), 'r');
title('-80 a 80');
clear;
n = -160 : 160; n(161) = 0.001; h = sin((pi/2)*n) ./ (pi*n);
w = 0 : (pi/1000) : pi; H1 = dtft(h, n, w);
subplot 225;plot(w/pi, abs(H1), 'r');
title('-160 a 160');