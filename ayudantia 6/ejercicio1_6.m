load h.txt %con este comando se abre el archivo h
subplot 211;plot(h,'*');grid;xlabel('n');title('h(n)'); %con esto graficamos el archivo h
axis([0 260 -0.1 0.3]);
f=[0:100:200000];%frecuencia de la magnitud
M=abs(freqz(h,1,f,176400));%se calcula la magnitud de H(f)
subplot 212;semilogy(f/1000,M);grid;axis([0 180 0.000001 10]);xlabel('f[kHz])');
title('Mag[H(f)]');