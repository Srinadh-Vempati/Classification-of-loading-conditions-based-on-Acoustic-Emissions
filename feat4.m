function f4 = feat4(y,Fs)
f4 = zeros(size(y,1),3);
for i = 1:size(y,1)
    [c, lags] = xcorr(y(i,:));
    [pks, locs] = findpeaks(c,'Minpeakprominence',0.0005);
    tc = (1/Fs) * lags;
    tc1 = tc(locs);
    f4(i,1) = pks((end+1)/2);
    f4(i,2) = tc1((end+1)/2 +1);
    f4(i,3) = pks((end+1)/2 +1);
end