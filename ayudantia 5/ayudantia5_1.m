clear;
clc;
a=[1,-1,0.9]; %coeficientes de la salida
b=1;          %coeficientes de la entrada
[x,n]=impulso(0,-40,200); %respuesta impulso entre -40 y 200
[z,m]=escalon(0,-40,200);  %respuesta escalon entre -40 y 200  
h=filter(b,a,x);
l=filter(b,a,z);
subplot 211; plot(n,h);title('Respuesta impulso');grid; %grafica respuesta impulso
subplot 212; plot(m,l);title('Respuesta escalon');grid;axis([-50 200 -1 2.5]); %grafica respuesta escalon


