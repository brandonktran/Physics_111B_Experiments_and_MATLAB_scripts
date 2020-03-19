
hold on
xbins= 50
x=0.8272:0.0144:1.533
err=1/sqrt(10)*8*ones(size(x))
h=histogram(peakdata, xbins);
Y=h.Values
errorbar(x,Y,err)
hold off
mean(peakdata)
std(peakdata)

%histfit(peakdata, xbins)
%pd = fitdist(peakdata,'Normal')

min(peakdata);
max(peakdata);

%% reduced chi-squared
x=0.8272:0.0144:1.533

 wy=[];
 for i=1:length(Y)
     z = Y(i)-14.315*(1/(0.103837*sqrt(2*pi)))*exp(-0.5*((x(i)-1.20268)/0.103837)^2);
     wy = [wy; z];
     
 end
 
 sum(wy)