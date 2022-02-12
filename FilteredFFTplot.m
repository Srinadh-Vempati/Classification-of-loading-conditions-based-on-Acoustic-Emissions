y1fft = abs(fft(y1,nfft));
y2fft = abs(fft(y2,nfft));
y3fft = abs(fft(y3,nfft));
y4fft = abs(fft(y4,nfft));
y5fft = abs(fft(y5,nfft));
y6fft = abs(fft(y6,nfft));

figure(1)
subplot(311)
plot(f(1:end/2),y1fft(1:end/2));
subplot(312)
plot(f(1:end/2),y2fft(1:end/2));
subplot(313)
plot(f(1:end/2),y3fft(1:end/2));

figure(2)
subplot(311)
plot(f(1:end/2),y4fft(1:end/2));
subplot(312)
plot(f(1:end/2),y5fft(1:end/2));
subplot(313)
plot(f(1:end/2),y6fft(1:end/2));