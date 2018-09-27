t=[0:0.01:1];
vi=1*t;
vo=0.1*vi+0.9*(t-0.01);
stem(t,vo);
xlabel('tiempo[seg]');
ylabel('salida[V]');
