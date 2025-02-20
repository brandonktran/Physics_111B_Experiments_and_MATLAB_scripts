%% Hall Field as Function of Magnetic Field for 6 pressures
B_field1=[0 7.5 12.56 20.78 26.35 34.1 39.9 48.3 54.2 62.6 69.3];
B_field2=[0 7.81 13.6 21.15 26.67 34.4 40.2 48.7 54.5 62.8 68.5];
B_field3=[0 7.6 12.62 21 26.45 34.4 40 48.8 54.5 63 68.6];
B_field4=[0 7.93 12.89 21.09 26.7 34.9 40.5 49 54.9 63.2 68.9];
B_field5=[0 7.52 12.79 21.09 26.6 35 40.5 49.1 55 63.3 69.1];
B_field6=[0 7.69 12.94 21.15 26.75 34.8 40.3 49.2 54.8 63.2 69.1];

V_H_P1=[5 6 6.8 7.7 8.3 9.1 9.8 10.8 11.5 12.3 12.9]; % hall voltage between probe 1 and 2 for pressure 1
V_H_P2=[5.5 6.5 7.1 7.8 8.2 9 9.7 10.5 11.1 11.8 12.2]; % hall voltage between probe 1 and 2 for pressure 2
V_H_P3=[5.2 5.8 6.3 7.2 7.6 8.2 8.8 9.4 10 10.7 11.2]; % hall voltage between probe 1 and 2 for pressure 3
V_H_P4=[4.3 5.1 5.7 6.3 6.8 7.4 7.9 8.7 9.2 9.7 10]; % hall voltage between probe 1 and 2 for pressure 4
V_H_P5=[3.9 4.4 4.8 5.3 5.8 6.4 6.8 7.4 7.9 8.5 8.9]; % hall voltage between probe 1 and 2 for pressure 5
V_H_P6=[3.7 4.1 4.5 4.9 5.4 5.9 6.4 7.1 7.6 8.2 8.6]; % hall voltage between probe 1 and 2 for pressure 6

E_H_P1=1/(0.004)*V_H_P1; % Hall Field for pressure 1
E_H_P2=1/(0.004)*V_H_P2; % Hall Field for pressure 2
E_H_P3=1/(0.004)*V_H_P3; % Hall Field for pressure 3
E_H_P4=1/(0.004)*V_H_P4; % Hall Field for pressure 4
E_H_P5=1/(0.004)*V_H_P5; % Hall Field for pressure 5
E_H_P6=1/(0.004)*V_H_P6; % Hall Field for pressure 6

x = linspace(0,70);
p1 = polyfit(B_field1,E_H_P1,1);
y1 = polyval(p1,x);
p2 = polyfit(B_field2,E_H_P2,1);
y2 = polyval(p2,x);
p3 = polyfit(B_field3,E_H_P3,1);
y3 = polyval(p3,x);
p4 = polyfit(B_field4,E_H_P4,1);
y4 = polyval(p4,x);
p5 = polyfit(B_field5,E_H_P5,1);
y5 = polyval(p5,x);
p6 = polyfit(B_field6,E_H_P6,1);
y6 = polyval(p6,x);


figure(1)
grid on
xlabel('Applied Magnetic field (mT)');
ylabel('Hall Field (V/m)');
hold on
plot(x,y1, '-k')
plot(x,y2, '-r')
plot(x,y3, '-.k')
plot(x,y4, '-.r')
plot(x,y5, '--k')
plot(x,y6, '--r')
err=50*[1 1 1 1 1 1 1 1 1 1 1];
errorbar(B_field1,E_H_P1,err, 'ko','MarkerSize', 7)
errorbar(B_field2,E_H_P2,err, 'r*','MarkerSize', 7)
errorbar(B_field3,E_H_P3,err, 'kx','MarkerSize', 7)
errorbar(B_field4,E_H_P4,err, 'rs','MarkerSize', 7)
errorbar(B_field5,E_H_P5,err, 'k^','MarkerSize', 7)
errorbar(B_field6,E_H_P6,err, 'rp','MarkerSize', 7)
%plot(B_field1,E_H_P1,'ko')
%plot(B_field2,E_H_P2,'ro')
%plot(B_field3,E_H_P3,'ko')
%plot(B_field4,E_H_P4,'ro')
%plot(B_field5,E_H_P5,'ko')
%plot(B_field6,E_H_P6,'ro')
legend(sprintf('15 torr, y=%.3f{}x%.3f',p1(1),p1(2)), sprintf('18 torr, y=%.3f{}+x%.3f',p2(1),p2(2)),sprintf('21 torr, y=%.3f{}+x%.3f',p3(1),p3(2)),sprintf('24 torr, y=%.3f{}x%.3f',p4(1),p4(2)), sprintf('27 torr, y=%.3f{}x%.3f',p5(1),p5(2)), sprintf('30 torr, y=%.3f{}x%.3f',p6(1),p6(2)), 'Location','NorthWest'); 
title('Hall Field vs Magnetic Field')
hold off

%% reduced chi-squared
%% reduced chisquared for gauss
chi1=[];
 for i=1:length(B_field1)
     z = (E_H_P1(i)-(p1(1)*B_field1(i)+p1(2)))^2/(50)^2;
     chi1= [chi1; z];
 end
 reducedchi1=(sum(chi1))/9

 chi2=[];
 for i=1:length(B_field2)
     z = (E_H_P2(i)-(p2(1)*B_field2(i)+p2(2)))^2/(50)^2;
     chi2= [chi2; z];
 end
 reducedchi2=(sum(chi2))/9
 
  chi3=[];
 for i=1:length(B_field3)
     z = (E_H_P3(i)-(p3(1)*B_field3(i)+p3(2)))^2/(50)^2;
     chi3= [chi3; z];
 end
 reducedchi3=(sum(chi3))/9

  chi4=[];
 for i=1:length(B_field4)
     z = (E_H_P4(i)-(p4(1)*B_field4(i)+p4(2)))^2/(50)^2;
     chi4= [chi4; z];
 end
 reducedchi4=(sum(chi4))/9
 
   chi5=[];
 for i=1:length(B_field5)
     z = (E_H_P5(i)-(p5(1)*B_field5(i)+p5(2)))^2/(50)^2;
     chi5= [chi5; z];
 end
 reducedchi5=(sum(chi5))/9
 
    chi6=[];
 for i=1:length(B_field6)
     z = (E_H_P6(i)-(p6(1)*B_field6(i)+p6(2)))^2/(50)^2;
     chi6= [chi6; z];
 end
 reducedchi6=(sum(chi6))/9