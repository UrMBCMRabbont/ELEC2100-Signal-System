N = 60000;
n = 0:N-1;


fs1 = 80e3;
x1 = 8*cos(10e3*pi*n/fs1) + 12*cos(30e3*pi*n/fs1) + 4*cos(50e3*pi*n/fs1);
f1 = [-N/2:N/2-1]*(fs1/N);

fs2 = 40e3;
x2 = 8*cos(10e3*pi*n/fs2) + 12*cos(30e3*pi*n/fs2) + 4*cos(50e3*pi*n/fs2);
f2 = [-N/2:N/2-1]*(fs2/N);

figure(3);
subplot(311);plot(f1, abs(fftshift(fft(x1))/length(x1))); grid; ylabel("|X1|"); xlabel("f1");
subplot(312);plot(f2, abs(fftshift(fft(x2))/length(x2))); grid; ylabel("|X2|"); xlabel("f2");
subplot(313);stem(n, x2, '.'); ylabel('x2[n]'); grid; xlabel('x'); axis([0 50 -50 50]);