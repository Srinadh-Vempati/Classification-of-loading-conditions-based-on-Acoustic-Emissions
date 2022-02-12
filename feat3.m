function f3 = feat3(y,Fs)

f3 = zeros(size(y,1),12);

[pxx, freq] = pwelch(y',[],[],[],Fs);
pxx = pxx';
for i = 1:size(pxx,1)
    
    [pks, locs] = findpeaks(pxx(i,:),'npeaks',20);
    [spks, idx] = sort(pks, 'descend');
    slocs = locs(idx);
    pkssel = spks(1:6);
    locsel = slocs(1:6);
    [olocs idx1] = sort(locsel,'ascend');
    opks = pkssel(idx1);
    ofpk = freq(olocs);
    f3(i,1:6) = ofpk;
    f3(i,7:12) = opks;
end
    


