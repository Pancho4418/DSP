clc;
clear;
x = [zeros(1,16) ones(1,10) zeros(1,30)];
nx = -5: 50;
[e, nh] = escalon(0, -5, 50);
h = (0.8 .^ -nh) .* e;
[y, ny] = convol(x, nx, h, nh);
[z,nz]=impulso(0,-20,20);
[j,nj]=convol(z,nz,x,nx);
subplot 321; stem(nx, x); axis([-10 40 0 1]); title('pulso rectangular'); grid
subplot 323; stem(nh, h); axis([-10 60 0 10^5]); title('exponencial creciente'); grid
subplot 324; stem(ny, y); axis([-10 100 0 10^6]); title('convol pulso*exp'); grid
subplot 322; stem(z, nz); axis([-10 20 0 10]); title('impulso'); grid
subplot 325; stem(j, nj); axis([-5 5 0 70]); title('convol pulso*impulso'); grid

