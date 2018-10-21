m=audioread('carpenters.wav');%se lee el archivo y se guarda en m
y=da(m,4);%genera un vector 'y' discretizando 'm' en espec�fico con 4 bits
r=m-y;%se calcula el ruido de cuantizaci�n
n=[10000:10400];
    %el ruido de cuantizacion es la diferencia entre la se�al "real" que entra
    %y la se�al que crea matlab al discretizarla en la cantidad de bytes que se
    %desee.
subplot 311;plot(n,m(n),'b',n,y(n),'r');
title('Canci�n original (Azul)   Canci�n discretizada (rojo)');
subplot 312;plot(n,r(n));title('Ruido de cuantizaci�n');
subplot 313;hist(r,100);title('Histograma');
audiowrite('discretizada.wav',y,44100)%se escribe 'y' en el archivo "discretizada"
audiowrite('ruido_cuant.wav',r,44100)%se escribe 'r' en el archivo "ruido_cuant"
