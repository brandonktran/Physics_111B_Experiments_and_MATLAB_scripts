format long 
x2=[420 440 460 480 500 520 540 560 580 600 620 640 660 680 700]
x1=[420 440 460 480 500 520 540 560]
y1=[0.55 0.75 1.15 1.55 2.15 3 4.15 5.4 6.2 6.55 6.95 7.35 7.45 7.6 7.75]
x3=[580 600 620 640 660 680 700]
y3=[6.2 6.55 6.95 7.35 7.45 7.6 7.75]
bin=[58 97 141 200 296 411 545 628]


PMTout=[];
 for i=1:length(bin)
     z = bin(i)*(9.704/1024)/(64*8.5);
     PMTout = [PMTout; z];
 end
 
 PMTout1=[];
 for i=1:length(x3)
     z = y3(i)/(64*8.5);
     PMTout1 = [PMTout1; z];
 end
 
 y3=transpose(PMTout1)
 
x=[420 440 460 480 500 520 540 560];
y1=transpose(PMTout);
logx=log(x);
logy=log(y1);
p=polyfit(logx,logy,1);
grid
xlabel('log(x)');
ylabel('log(y)');
k=p(1);
loga=p(2);
a=exp(loga);
figure
plot(x,y1,'ro');
xlabel('PMT High Voltage (V)');
ylabel('PMT output Voltage (V)');
title('Gain of PMT as a function of the PMT High Voltage')
axis equal square
grid
hold on; plot(x,a*x.^k,'k')
hold on; plot(x3,y3,'ro')
legend('Data','y=9.4e-26x^{8.414}');

chi3=[];
 for i=1:length(x)
     z = (y1(i)-(a*x(i)^k))^2/(0.01)^2;
     chi3= [chi3; z];
 end
 reducedchi3=(sum(chi3))/6

