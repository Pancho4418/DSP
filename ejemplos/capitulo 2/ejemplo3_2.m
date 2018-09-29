%se creará una onda periodica de frecuencia
%0.2 [ciclos/muestra]
clc;
clear;
N=5; %numero de muestras
t=[0:1/N:N];
x=cos(t);
stem(t,x); grid;