[x,fs] = audioread('sample3c.wav');
t = [0:length(x)-1]/fs;

ak = fft(x)/length(x);  %%obtain fs coefficient
f = [-length(x)/2:length(x)/2-1]*fs/length(x); %% calculate frequency index
a = [abs(ak) > 0.001].*angle(ak);

figure(1);
subplot(211); absplot = plot(f, abs(fftshift(ak))); ylabel('|ak|'); grid;
dt0 = datatip(absplot, 800, 0.12);
dt1 = datatip(absplot, 4400, 0.24);
dt2 = datatip(absplot, 12800, 0.13);
subplot(212); angplt = plot(f, fftshift(a)); ylabel('<ak'); grid;
dt3 = datatip(angplt, 4400, 0.7854);
dt4 = datatip(angplt, -4400, -0.7854);
xlabel('f(Hz)');

figure(2);
equation1 = 0.24*cos(1600*pi*t) + 0.48*cos(8800*pi*t- pi/4) + 0.26*cos(25600*pi*t);
subplot(211); plot(t(1:800), x(1:800)); grid; ylabel('audio');
subplot(212); plot(t(1:800), equation1(1:800)); grid; ylabel('equation');
xlabel('time domain(sec)');

