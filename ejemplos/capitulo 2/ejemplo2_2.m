%para el ejercicio 2 solamente se nos pide graficar
%funciones pares e impares, como lo son el seno
%y el coseno, por lo tanto se graficarán como
%está hecho en el ppt
clc;
clear;
t=[-10:0.31:10];
impar=sin(t);
par=cos(t);
subplot 221; stem(t,impar); grid;
xlabel('Tiempo[seg]'); title('Impar');
subplot 222; stem(t,par); grid;
xlabel('Tiempo[seg]'); title('Par');
%para ver de mejor manera una comparativa entre
%estos graficos, se hará un siguiente con ambos
%incluidos.
subplot 223; stem(t,par); hold on; stem(t,impar);
title('Comparativa'); xlabel('Tiempo[seg]');
