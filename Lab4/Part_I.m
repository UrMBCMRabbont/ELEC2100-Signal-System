[s4, fs] = audioread('m1c.wav');
s4 = s4';


t = [0:length(s4)-1]/fs;
f = [-length(s4)/2:length(s4)/2-1]*fs/length(s4);

c1=cos(2*pi*(22000)*t);
c2=cos(2*pi*(38000)*t);
x1=s4.*c1; x2=s4.*c2;

[B1,A1] = butter(8,0.052);
[H1,fh] = freqz(B1,A1,1e3,fs);

s4_y = filter(B1,A1,x2);
f_y = [-length(s4_y)/2:length(s4_y)/2-1]*fs/length(s4_y);
soundsc(s4_y, fs);

figure(1);
subplot(311);plot(f, abs(fftshift(fft(s4)))); ylabel('S4'); grid; xlabel("Hz");
subplot(312);plot(f, abs(fftshift(fft(x2)))); ylabel('x2'); grid; xlabel("Hz");
subplot(313);plot(f, abs(fftshift(fft(s4_y)))); ylabel('s4_y'); grid; xlabel("Hz");

figure(2);
plot(fh, abs(H1));axis([0 fs/2 -pi pi]); grid; ylabel("|H1|"); xlabel("Hz");
