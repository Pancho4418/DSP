%Ayudantia 4 ejercicio 1
%para generar la secuencia coseno debemos:
clc;
clear;
fx=0.05;    %frecuencia [c/m] de x
fs=0.05;    %frecuencia [c/m] de las sinusoides de la DTFT

for pxg=[0:60:180]; %fase de x en grados
    px=(pi/180)*pxg;%fase transformada a radianes
    n=[0:1:19];
    x=cos(2*pi*fx*n-px); %secuencia x
    c=cos(2*pi*fx*n); %componente coseno de la DTFT
    s=sin(2*pi*fs*n); %componente seno de la DTFT
    PrCos=x.*c; %producto punto con la componente coseno
    PrSen=x.*s; %producto punto con la componente seno
    SPC=sum(PrCos); %sumatoria de los productos de la componente seno
    SPS=sum(PrSen); %sumatoria de productos de la componente seno
    fase=(180/pi)*atan2(SPS,SPC);   %fase, medida en grados
    fprintf('fase entrada: %3.0f Sumatoria coseno: %2.2f Sumatoria seno:%2.2f fase final=%3.1f \n',pxg,SPC,SPS,fase)
end       
%porque al estar en fase los valores se van anulando entre si, de otro modo
%no sería posible que funcionara la función, ademas esto se puede explicar
%por el principio de ortogonalidad