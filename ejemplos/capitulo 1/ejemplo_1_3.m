t = 0 : 0.3 : 30;                               %tiempo
v = exp(-0.1 * t) .* sin(t);                    %entrada amortiguada
subplot 121; plot(t, v); title('PLOT');         %grafica con plot
xlabel('Tiempo [seg]'); ylabel('Volts'); grid;
subplot 122; stem(t, v); title('STEM');         %grafica con stem
xlabel('Tiempo [seg]'); ylabel('Volts'); grid;
%la grafica con plot es una línea continua
%la grafica con stem es un punto a punto