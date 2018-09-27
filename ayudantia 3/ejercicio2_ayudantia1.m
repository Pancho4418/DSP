clear;
clc;
A=1;B=9;C=3;D=4;E=9;H=6;
% Respuesta escalón filtro IIR
% y(n) = 0.1 x(n) + 0.9 y(n-1)
vi = (H*A); % voltaje de entrada
a = (D+E)/10; % constante del filtro
dt = 10e-3; % 1/100 Hz = 10 mseg
t(1) = 0; % índice 1 => t = 0
vf(1) = 0; % índice 1 => t = 0
for i = 2 : 41;
t(i) = (i-1) * dt;
vf(i) = (1-a) * vi + a * vf(i-1);
end
close;
stem(t, vf); % gráfico
xlabel('seg'); grid

%si se ejecuta el codigo con nuestro rut, se aprecia
%distintos resultados para el filtro, pero si lo que se desea
%es obtener una respuesta ideal, las mejores variables serían
% H*A=1  y  D+E=9
%entonces bastaría con que H=1 A=1 D=9 E=0
%con respecto al tipo de grafico obtenindo, fue un grafico
%decreciente exponencialmente.
