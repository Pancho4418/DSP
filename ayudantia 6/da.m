function [y] = da(x, b)
% Discretiza la amplitud de x, simulando el efecto de un conv. A/D
% Uso: y = da(x, b);
% x: vector a discretizar
% b: número de bits del conversor A/D
% y: vector discretizado
A = max(x) - min(x); % amplitud ptp de x
y = (x - min(x)) / A; % y = x escalado entre 0 y 1
np = 2^b - 1; % código máximo del conversor
y = round(y * np); % salida del conversor A/D
y = A * (y/np) + min(x); % normaliza a la amplitud original