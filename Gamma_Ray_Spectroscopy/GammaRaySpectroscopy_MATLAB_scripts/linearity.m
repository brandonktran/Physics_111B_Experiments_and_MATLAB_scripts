x=[0.5 0.6 0.7 0.8 0.9 1]
y12=[2.1428 2.5447 2.9563 3.3773 3.7889 4.1334]
y24=[4.2482 4.9582 5.7221 6.0953 6.1527 6.3867]
y48atten=[3.4922 4.1430 4.9086 5.7508 6.4973 7.1480]
x1 = linspace(0.5,1)
p1 = polyfit(x,y12,1)
p2 = polyfit(x,y24,1)
p3 = polyfit(x,y48atten,1)
y1 = polyval(p1,x1)
y2 = polyval(p2,x1)
y3 = polyval(p3,x1)



subplot(2,1,1)
hold on ;
err=0.1*[1 1 1 1 1 1]
h(1)=plot(x1,y1,'k')
errorbar(x,y12,err, 'ko')

chi1=[];
 for i=1:length(x)
     z = (y12(i)-(p1(1)*x(i)+p1(2)))^2/(0.1)^2;
     chi1= [chi1; z];
 end
 reducedchi1=(sum(chi1))/4



h(2)=plot(x1,y2,'r')
errorbar(x,y24,err, 'ro')

chi2=[];
 for i=1:length(x)
     z = (y24(i)-(p2(1)*x(i)+p2(2)))^2/(0.1)^2;
     chi2= [chi2; z];
 end
 reducedchi2=(sum(chi2))/4


h(3)=plot(x1,y3, 'b')
errorbar(x,y48atten,err, 'bo')

chi3=[];
 for i=1:length(x)
     z = (y48atten(i)-(p3(1)*x(i)+p3(2)))^2/(0.1)^2;
     chi3= [chi3; z];
 end
 reducedchi3=(sum(chi3))/4


xlabel('Input pulse amplitude (V)')
ylabel('Output Peak Channel Voltage (V)')
title('Determining the Linearity of the Amplifier')
legend(h,{'12x Amplification \chi^2/df =0.05','24x amplification \chi^2/df =8.9','48x amplification with 10dB attenuation \chi^2/df =0.35'});
grid on
hold off


%%
x=[1.1 1.2 1.3 1.4 1.5]
y12=[4.1047 4.0664 4.0186 3.9611 3.9037]
y24=[6.2711 6.2484 6.191 6.1049 6.05] 
y48atten=[8.05 8.3 8.9855 9.1961 9.3301]
x1 = linspace(1,1.5)
p1 = polyfit(x,y12,1)
p2 = polyfit(x,y24,1)
p3 = polyfit(x,y48atten,1)
y1 = polyval(p1,x1)
y2 = polyval(p2,x1)
y3 = polyval(p3,x1)

subplot(2,1,2)
hold on ;
err=0.1*[1 1 1 1 1 ]
h(1)=plot(x1,y1,'k')
errorbar(x,y12,err, 'ko')

chi1=[];
 for i=1:length(x)
     z = (y12(i)-(p1(1)*x(i)+p1(2)))^2/(0.1)^2;
     chi1= [chi1; z];
 end
 reducedchi1=(sum(chi1))/4



h(2)=plot(x1,y2,'r')
errorbar(x,y24,err, 'ro')

chi2=[];
 for i=1:length(x)
     z = (y24(i)-(p2(1)*x(i)+p2(2)))^2/(0.1)^2;
     chi2= [chi2; z];
 end
 reducedchi2=(sum(chi2))/4


h(3)=plot(x1,y3, 'b')
errorbar(x,y48atten,err, 'bo')

chi3=[];
 for i=1:length(x)
     z = (y48atten(i)-(p3(1)*x(i)+p3(2)))^2/(0.1)^2;
     chi3= [chi3; z];
 end
 reducedchi3=(sum(chi3))/4


xlabel('Input pulse amplitude (V)')
ylabel('Output Peak Channel Voltage (V)')
title('Determining the Linearity of the Amplifier')
legend(h,{'12x Amplification','24x amplification','48x amplification with 10dB attenuation'});
grid on
hold off
