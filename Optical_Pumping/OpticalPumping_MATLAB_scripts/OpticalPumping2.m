Frequency1=[0.5 1 1.5 2 2.5 3];
Frequency2=[0.5 1 1.5 2 2.5];
Frequency3=[ 0.5 1 1.5 2 2.5]*-1;
Frequency4=[ 1 1.5 2 2.5]*-1;
rb87for=[0.08 0.25 0.41 0.57 0.74 0.9]*(0.9e-6*135/0.275*10000);
rb85for=[0.16 0.41 0.66 0.9 1.14]*(0.9e-6*135/0.275*10000);
rb85rev=[0.3 0.55 0.8 1.04 1.29]*(0.9e-6*135/0.275*10000)*-1;
rb87rev=[ 0.39 0.55 0.71 0.88]*(0.9e-6*135/0.275*10000)*-1;

figure(1);
subplot(2,2,1)
err1=[];
 for i=1:length(rb87for)
     z = 0.05+0.05*Frequency1(i);
     err1= [err1; z];
 end
 
m1=linspace(0,4.5);
p1 = polyfit(rb87for,Frequency1,1);
y1 = polyval(p1,m1);
k1=p1(1)
z1=p1(2);
hold on
errorbar(rb87for,Frequency1,err1,'ro')
plot(m1,y1, 'k')
xlabel('Applied Magnetic Field B (Gauss)')
ylabel('Resonance Frequency (MHz)')
legend('Measured Data',sprintf('y=%.3f{}x+%.3f',k1,z1),'Location','northwest')
annotation('textbox',[.3 .2 .4 .5],'String','\chi^2/df = 0.062','FitBoxToText','on')
title('^{87}Rb Forward')
grid on
hold off

chi1=[];
 for i=1:length(Frequency1)
     z = (Frequency1(i)-(k1*rb87for(i)+z1))^2/(err1(i))^2;
     chi1= [chi1; z];
 end
     
 reducedchi1=(sum(chi1))/(length(Frequency1)-1)

D1=[];
 for i=1:length(Frequency1)
     z = (Frequency1(i)-(k1*rb87for(i)+z1))^2;
     D1= [D1; z];
 end
     
 D1=sqrt((sum(D1))/(length(Frequency1)-2))
 

 
subplot(2,2,2)
err2=[];
 for i=1:length(rb85for)
     z = 0.05+0.05*Frequency2(i);
     err2= [err2; z];
 end
 
m2=linspace(0,6);
p2 = polyfit(rb85for,Frequency2,1);
y2 = polyval(p2,m2);
k2=p2(1)
z2=p2(2);
hold on
errorbar(rb85for,Frequency2,err2,'ro')
plot(m2,y2, 'k')
xlabel('Applied Magnetic Field B (Gauss)')
ylabel('Resonance Frequency (MHz)')
legend('Measured Data',sprintf('y=%.3f{}x+%.3f',k2,z2),'Location','northwest')
annotation('textbox',[.75 .2 .4 .5],'String','\chi^2/df = 0.059','FitBoxToText','on')
title('^{85}Rb Forward')
grid on
hold off

chi2=[];
 for i=1:length(Frequency2)
     z = (Frequency2(i)-(k2*rb85for(i)+z2))^2/(err2(i))^2;
     chi2= [chi2; z];
 end
     
 reducedchi2=(sum(chi2))/(length(Frequency2)-1)
 
 D2=[];
 for i=1:length(Frequency2)
     z = (Frequency2(i)-(k2*rb85for(i)+z2))^2;
     D2= [D2; z];
 end
     
 D2=sqrt((sum(D2))/(length(Frequency2)-2))

subplot(2,2,3)
err3=[];
 for i=1:length(rb87rev)
     z = (0.05+0.05*Frequency4(i)*-1);
     err3= [err3; z];
 end
 
m3=linspace(-4,-1);
p3 = polyfit(rb87rev,Frequency4,1);
y3 = polyval(p3,m3);
k3=p3(1)
z3=p3(2);
hold on
errorbar(rb87rev,Frequency4,err3,'ro')
plot(m3,y3, 'k')
xlabel('Applied Magnetic Field B (Gauss)')
ylabel('Resonance Frequency (MHz)')
legend('Measured Data',sprintf('y=%.3f{}x+%.3f',k3,z3),'Location','northwest')
annotation('textbox',[.3 0.1 .4 .15],'String','\chi^2/df = 0.047','FitBoxToText','on')
title('^{87}Rb Reverse')
grid on
hold off

chi3=[];
 for i=1:length(Frequency4)
     z = (Frequency4(i)-(k3*rb87rev(i)+z3))^2/(err3(i))^2;
     chi3= [chi3; z];
 end
     
 reducedchi3=(sum(chi3))/(length(Frequency4)-1)
 
 D3=[];
 for i=1:length(Frequency4)
     z = (Frequency4(i)-(k3*rb87rev(i)+z3))^2;
     D3= [D3; z];
 end
     
 D3=sqrt((sum(D3))/(length(Frequency4)-2))

subplot(2,2,4)
err4=[];
 for i=1:length(rb85rev)
     z = (0.05+0.05*Frequency3(i)*-1);
     err4= [err4; z];
 end
m4=linspace(-6,0);
p4 = polyfit(rb85rev,Frequency3,1);
y4 = polyval(p4,m4);
k4=p4(1)
z4=p4(2);
hold on
errorbar(rb85rev,Frequency3, err4,'ro')
plot(m4,y4, 'k')
xlabel('Applied Magnetic Field B (Gauss)')
ylabel('Resonance Frequency (MHz)')
legend('Measured Data',sprintf('y=%.3f{}x+%.3f',k4,z4),'Location','northwest')
annotation('textbox',[.75 0.1 .4 .15],'String','\chi^2/df = 0.023','FitBoxToText','on')
title('^{85}Rb Reverse')
grid on
hold off

chi4=[];
 for i=1:length(Frequency3)
     z = (Frequency3(i)-(k4*rb85rev(i)+z4))^2/(err4(i))^2;
     chi4= [chi4; z];
 end
     
 reducedchi4=(sum(chi4))/(length(Frequency3)-1)
 
 D4=[];
 for i=1:length(Frequency3)
     z = (Frequency3(i)-(k4*rb85rev(i)+z4))^2;
     D4= [D4; z];
 end
     
 D4=sqrt((sum(D4))/(length(Frequency3)-2))


%% Nuclear Spin
Rb87_Iforward=(2.799/(k1)-1)/2
 rb87forIerror=Rb87_Iforward*D1/k1

Rb85_Iforward=(2.799/(k2)-1)/2
rb85forIerror=Rb85_Iforward*D2/k2

Rb87_Ireverse=(2.799/(k3)-1)/2
rb87revIerror=Rb87_Ireverse*D3/k3

Rb85_Ireverse=(2.799/(k4)-1)/2
rb85revIerror=Rb85_Ireverse*D4/k4
%% Earth Magnetic Field
figure(2);
subplot(2,1,1)
Frequency5=[Frequency4 Frequency1];
rb87=[rb87rev rb87for];

err5=[];
 for i=1:length(rb87)
     z = 0.05+0.05*abs(Frequency5(i));
     err5= [err5; z];
 end
 
m5=linspace(-4,5);
p5 = polyfit(rb87,Frequency5,1);
y5 = polyval(p5,m5);
k5=p5(1);
z5=p5(2);
hold on
errorbar(rb87,Frequency5, err5,'ro')
plot(m5,y5, 'k')
xlabel('Applied Magnetic Field B (Gauss)')
ylabel('Resonance Frequency (MHz)')
legend('Measured Data',sprintf('y=%.3f{}x+%.3f',k5,z5),'Location','northwest')
annotation('textbox',[.65 0.1 .4 .6],'String','\chi^2/df = 0.268 ','FitBoxToText','on')
title('^{87}Rb')
grid on
hold off

chi5=[];
 for i=1:length(Frequency5)
     z = (Frequency5(i)-(k5*rb87(i)+z5))^2/(err5(i))^2;
     chi5= [chi5; z];
 end
     
 reducedchi5=(sum(chi5))/(length(Frequency5)-1)

S1=[];
 for i=1:length(Frequency5)
     z = (Frequency5(i)-(k5*rb87(i)+z5))^2;
     S1= [S1; z];
 end
     
 S1=sqrt((sum(S1))/(length(Frequency5)-2));
 
 Rb85_Ierror=S1*sqrt(length(Frequency5)/(length(Frequency5)*sum(Frequency5.^2)-sum(Frequency5)^2))*10
Rb85_eartherror=S1*sqrt(sum(Frequency5.^2)/(length(Frequency5)*sum(Frequency5.^2)-sum(Frequency5)^2))

subplot(2,1,2)
Frequency6=[Frequency3 Frequency2];
rb85=[rb85rev rb85for];
err6=[];
 for i=1:length(rb85)
     z = 0.05+0.05*abs(Frequency6(i));
     err6= [err6; z];
 end
m6=linspace(-6,6);
p6 = polyfit(rb85,Frequency6,1);
y6 = polyval(p6,m6);
k6=p6(1);
z6=p6(2);
hold on
errorbar(rb85,Frequency6, err6,'ro')
plot(m6,y6, 'k')
xlabel('Applied Magnetic Field B (Gauss)')
ylabel('Resonance Frequency (MHz)')
legend('Measured Data',sprintf('y=%.3f{}x+%.3f',k6,z6),'Location','northwest')
annotation('textbox',[.65 0.1 .4 .1],'String','\chi^2/df = 0.299 ','FitBoxToText','on')
title('^{85}Rb')
grid on
hold off

chi6=[];
 for i=1:length(Frequency6)
     z = (Frequency6(i)-(k6*rb85(i)+z6))^2/(err6(i))^2;
     chi6= [chi6; z];
 end
     
 reducedchi6=(sum(chi6))/(length(Frequency6)-1)

S2=[];
 for i=1:length(Frequency6)
     z = (Frequency6(i)-(k6*rb85(i)+z6))^2;
     S2= [S2; z];
 end
     
 S2=sqrt((sum(S2))/(length(Frequency6)-2));
 
Rb87_Ierror=S2*sqrt(length(Frequency6)/(length(Frequency6)*sum(Frequency6.^2)-sum(Frequency6)^2))*10
Rb87_eartherror=S2*sqrt(sum(Frequency6.^2)/(length(Frequency6)*sum(Frequency6.^2)-sum(Frequency6)^2))

Rb87_earth=z5/k5
Rb85_earth=z6/k6

meanearth= (Rb85_earth+Rb87_earth)/2

sigmaearth=(Rb85_earth-meanearth)^2+(Rb87_earth-meanearth)^2*100000



