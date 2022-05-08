[x, fs] = audioread('song2c.wav');
x = x';

delay = 46305;
h1 = ones(1, 1);
h = [h1 zeros(1,delay) 0.5*h1];

y = conv(x, h);

t = linspace(0, 1, 1001);
sound(y, fs);

mask = (t>=0);