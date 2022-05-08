x = [2 0 7 3 7 9 8 4];
nx = 9:16;

h = [12 12 12 12];
nh = 7:10;

y = conv(x, h);
ny = 16:26;

figure(1); 
subplot(311); stem(nx,x, 'r'); ylabel('x[n]'); grid; axis([0 17 0 12]); 
subplot(312); stem(nh,h, 'g'); ylabel('h[n]'); grid; axis([0 17 0 12]); 
subplot(313); stem(ny,y,'b'); ylabel('y[n]'); grid; axis([10 26 0 350]); 
xlabel('n');