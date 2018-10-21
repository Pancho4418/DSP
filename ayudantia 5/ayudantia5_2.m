clear;
clc;
w=[0:0.002:1]*pi;
S=80;
n=[1:S];
%primer pulso
P1=20;
x1=[ones(1,P1) zeros(1, S-P1)];
[X1]=dtft(x1,n,w);
%segundo pulso
P2=40;
x2=[ones(1,P2) zeros(1,S-P2)];
[X2]=dtft(x2,n,w);
%tercer pulso
P3=60;
x3=[ones(1,P3) zeros(1,S-P3)];
[X3]=dtft(x3,n,w);
subplot 321;stem(n,x1);xlabel('n');grid;title('20 Pulsos');
subplot 322;plot(w/pi,abs(X1));xlabel('w/Pi [rad/m]');grid;title('DTFT');
subplot 323;stem(n,x2);xlabel('n');grid;title('40 Pulsos');
subplot 324;plot(w/pi,abs(X2));xlabel('w/Pi [rad/m]');grid;title('DTFT');
subplot 325;stem(n,x3);xlabel('n');grid;title('60 Pulsos');
subplot 326;plot(w/pi,abs(X3));xlabel('w/Pi [rad/m]');grid;title('DTFT');