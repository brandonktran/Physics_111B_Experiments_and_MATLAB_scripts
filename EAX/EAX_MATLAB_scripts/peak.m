

xbins= 0.8:0.016:1.6
h=histogram(peakdata, xbins);
Y=h.Values
%mean(peakdata)
%std(peakdata)
histfit(peakdata, xbins)
pd = fitdist(peakdata,'Normal')

min(peakdata);
max(peakdata);

%% reduced chi-squared


 wy=[];
 for i=1:length(h.Values)
     x = Y(i)-(1/(0.103837*sqrt(2*pi)))*exp(-0.5*((xbins(i)-1.20268)/0.103837)^2);
     wy = [wy; x];
     
 end
 
 sum(wy)
