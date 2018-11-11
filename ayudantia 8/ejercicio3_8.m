clear;
clc;

t1=tpofft(512);
lg1=log2(512);
c1=t1/(512*lg1);
N1=512;
fprintf('Para 512 datos:\n');
fprintf('N=%d log2(N)=%d T=%1.2f [us] c=%f\n',N1,lg1,t1,c1);

t2=tpofft(1024);
lg2=log2(1024);
c2=t2/(1024*lg2);
N2=1024;
fprintf('Para 1024 datos:\n');
fprintf('N=%d log2(N)=%d T=%1.2f [us] c=%f\n',N2,lg2,t2,c2);

t3=tpofft(2048);
lg3=log2(2048);
c3=t3/(2048*lg3);
N3=2048;
fprintf('Para 2048 datos:\n');
fprintf('N=%d log2(N)=%d T=%1.2f [us] c=%f\n',N3,lg3,t3,c3);

t4=tpofft(4096);
lg4=log2(4096);
c4=t4/(4096*lg4);
N4=4096;
fprintf('Para 4096 datos:\n');
fprintf('N=%d log2(N)=%d T=%1.2f [us] c=%f\n',N4,lg4,t4,c4);