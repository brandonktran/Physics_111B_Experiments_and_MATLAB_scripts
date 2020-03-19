Frequency1=[0.5 1 1.5 2 2.5 3];
Frequency2=[0.5 1 1.5 2 2.5];
Frequency3=[ 0.5 1 1.5 2 2.5]*-1;
Frequency4=[ 1 1.5 2 2.5]*-1;
rb85forward=[0.08 0.25 0.41 0.57 0.74 0.9]*(0.9e-6*135/0.275*10000);
rb87forward=[0.16 0.41 0.66 0.9 1.14]*(0.9e-6*135/0.275*10000);
rb87reverse=[0.3 0.55 0.8 1.04 1.29]*(0.9e-6*135/0.275*10000)*-1;
rb85reverse=[ 0.39 0.55 0.71 0.88]*(0.9e-6*135/0.275*10000)*-1;

figure(1);
subplot(2,2,1)
m1=linspace(0,4.5);
p1 = polyfit(rb85forward,Frequency1,1);
y1 = polyval(p1,m1);
k1=p1(1)
z1=p1(2);
hold on
plot(m1,y1, 'k')
plot(rb85forward,Frequency1,'ro')
xlabel('Applied Magnetic Field B (Gauss)')
ylabel('Resonance Frequency (MHz)')
title('Rb85 Forward')
grid on
hold off

subplot(2,2,2)
m2=linspace(0,6);
p2 = polyfit(rb87forward,Frequency2,1);
y2 = polyval(p2,m2);
k2=p2(1)
z2=p2(2);
hold on
plot(m2,y2, 'k')
plot(rb87forward,Frequency2,'ro')
xlabel('Applied Magnetic Field B (Gauss)')
ylabel('Resonance Frequency (MHz)')
title('Rb87 Forward')
grid on
hold off

subplot(2,2,3)
m3=linspace(-4,-1);
p3 = polyfit(rb85reverse,Frequency4,1);
y3 = polyval(p3,m3);
k3=p3(1)
z3=p3(2);
hold on
plot(m3,y3, 'k')
plot(rb85reverse,Frequency4,'ro')
xlabel('Applied Magnetic Field B (Gauss)')
ylabel('Resonance Frequency (MHz)')
title('Rb85 Reverse')
grid on
hold off

subplot(2,2,4)
m4=linspace(-6,0);
p4 = polyfit(rb87reverse,Frequency3,1);
y4 = polyval(p4,m4);
k4=p4(1)
z4=p4(2);
hold on
plot(m4,y4, 'k')
plot(rb87reverse,Frequency3,'ro')
xlabel('Applied Magnetic Field B (Gauss)')
ylabel('Resonance Frequency (MHz)')
title('Rb87 Reverse')
grid on
hold off



%% Nuclear Spin
Rb87_Iforward=(2.799/(k1)-1)/2
Rb85_Iforward=(2.799/(k2)-1)/2

Rb85_Ireverse=(2.799/(k3)-1)/2
Rb87_Ireverse=(2.799/(k4)-1)/2

%% Earth Magnetic Field
figure(2);
subplot(2,1,1)
Frequency5=[Frequency4 Frequency1];
rb85=[rb85reverse rb85forward];
m5=linspace(-4,4.5);
p5 = polyfit(rb85,Frequency5,1);
y5 = polyval(p5,m5);
k5=p5(1);
z5=p5(2);
hold on
plot(m5,y5, 'k')
plot(rb85,Frequency5,'ro')
xlabel('Applied Magnetic Field B (Gauss)')
ylabel('Resonance Frequency (MHz)')
title('Rb85')
grid on
hold off

subplot(2,1,2)
Frequency6=[Frequency3 Frequency2];
rb87=[rb87reverse rb87forward];
m6=linspace(-6,6);
p6 = polyfit(rb87,Frequency6,1);
y6 = polyval(p6,m6);
k6=p6(1);
z6=p6(2);
hold on
plot(m6,y6, 'k')
plot(rb87,Frequency6,'ro')
xlabel('Applied Magnetic Field B (Gauss)')
ylabel('Resonance Frequency (MHz)')
title('Rb87')
grid on
hold off

Rb85_earth=z5/k5
Rb87_earth=z6/k6

meanearth= (Rb85_earth+Rb87_earth)/2

sigmaearth=(Rb85_earth-meanearth)^2+(Rb87_earth-meanearth)^2

Rb87_earthintercept=z6*(6/2.799)
Rb85_earthintercept=z5*(4/2.799)