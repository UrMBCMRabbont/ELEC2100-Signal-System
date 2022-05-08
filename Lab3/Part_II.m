[x, fs] = audioread('sample3c.wav');
t = [0:length(x)-1]/fs;
N = 8; Hi_cutoff = 6600; Lo_cutoff = 3600; Hi_Wn = Hi_cutoff/(fs/2); Lo_Wn = Lo_cutoff/(fs/2);

[B1, A1] = butter(N, [Lo_Wn, Hi_Wn]);
[Bandpass, fh] = freqz(B1, A1, 1e3, fs);

y = filter(B1, A1, x);

figure(1);
subplot(211); absplot = plot(fh, abs(Bandpass)); grid; ylabel('|H1|');
subplot(212); angplt = plot(fh, angle(Bandpass)); grid; ylabel('<H1');
abs_dt0 = datatip(absplot, Lo_cutoff, 0.8188);
abs_dt1 = datatip(absplot, 4400, 1);
abs_dt2 = datatip(absplot, Hi_cutoff, 0.7071);
abs_dt3 = datatip(angplt, Lo_cutoff, 0.1102);
abs_dt4 = datatip(angplt, 4400, -0.7998);
abs_dt5 = datatip(angplt, Hi_cutoff, 0.02);
xlabel('f(Hz)');

figure(2);
plot(t(1:800), y(1:800)); grid; ylabel('y(t)');
xlabel('time(sec)');