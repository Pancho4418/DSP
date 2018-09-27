clear;
clc;
A=1;B=9;C=3;D=4;E=9;
t=[0:0.3:30];
v=exp(-(B+A)/(2*C*(D+3))*t).*sin(t);
subplot 121; plot(t,v);title('plot');
xlabel('Tiempo[seg]');ylabel('Volts');grid;
subplot 122; stem(t,v); title('STEM');
xlabel('Tiempo[seg]'); ylabel('Volts');grid;

%se obtuvieron 2 graficas, donde la grafica "plot" se observa
%que es una linea continua sin descretizacion del tiempo
%mientras que la grafica con la funcion stem es una grafica con
%tiempo discreto, donde se aprecia claramente el punto a punto.