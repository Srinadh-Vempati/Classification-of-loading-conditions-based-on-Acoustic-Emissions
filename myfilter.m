function yf = myfilter(y,freqmin,freqmax,order,Fs)

Wn = [(freqmin/0.5/Fs) (freqmax/0.5/Fs)];
[b, a] = butter(order, Wn);
yf = filtfilt(b,a,y);




