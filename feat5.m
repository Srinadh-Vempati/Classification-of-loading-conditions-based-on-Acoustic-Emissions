function y5 = feat5(y,Fs)
y5 =  zeros(size(y,1),5);
edges = [0.5, 1.5, 5, 10, 15, 20]*1e3;
[xpsd freq] = periodogram(y',[],[],Fs);
xpsd = xpsd';
freq = freq';
for i = 1:size(y,1)
    for j = 1:length(edges)-1
        xpsdi = xpsd(i,:);
        y5(i,j) = sum( xpsdi( (freq >= edges(j)) & (freq < edges(j+1)) ) );
    end
end

    