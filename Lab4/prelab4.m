[s4,fs]=audioread('sample4.wav');
s4=s4';

t=[0:length(s4)-1]/fs;  
c=cos(2*pi*10e3*t);   
x=s4.*c;  
f=[-length(s4)/2:length(s4)/2-1]*fs/length(s4);

e = x.*c;

figure(1);
subplot(211);plot(f, abs(fftshift(fft(s4)))); ylabel("s4"); grid; xlabel("Hz");
subplot(212);plot(f, abs(fftshift(fft(x)))); ylabel("x"); grid; xlabel("Hz");

N=1000;              
n=0:N-1;   

fs1=25e3;           
x1=cos(2*pi*20e3*n/fs1);         
f1=[-N/2:N/2-1]*(fs1/N);       
 
figure(2) 
subplot(211); stem(n,x1,'.'); ylabel('x1[n]'); xlabel('n');    % plot the DT signal x1 
grid; axis([0  20  -1  1]); 
 
subplot(212); plot(f1, abs(fftshift(fft(x1))/length(x1)));    % plot magnitude spectrum of x1 
grid; ylabel('|X1|'); xlabel('freuqency (Hz)'); 
 
 
fs2=200e3;          
x2=cos(2*pi*20e3*n/fs2);       
f2=[-N/2:N/2-1]*(fs2/N);     
 
figure(3) 
subplot(211); stem(n,x2,'.'); ylabel('x2[n]'); xlabel('n');    % plot the DT signal x2 
grid; axis([0  20  -1  1]);             
 
subplot(212); plot(f2, abs(fftshift(fft(x2))/length(x2)));    % plot magnitude spectrum of x2 
grid; ylabel('|X2|'); xlabel('freuqency (Hz)'); 