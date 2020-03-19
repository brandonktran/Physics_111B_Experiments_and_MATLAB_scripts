%% Data

k=1.38e-23;
emass=9.10938356e-31; %kilograms
echarge=1.60217662e-19; % coluombs

B_field1=[ 7.5 12.56 20.78 26.35 34.1 39.9 48.3 54.2 62.6 69.3];
B_field2=[ 7.81 13.6 21.15 26.67 34.4 40.2 48.7 54.5 62.8 68.5];
B_field3=[ 7.6 12.62 21 26.45 34.4 40 48.8 54.5 63 68.6];
B_field4=[ 7.93 12.89 21.09 26.7 34.9 40.5 49 54.9 63.2 68.9];
B_field5=[ 7.52 12.79 21.09 26.6 35 40.5 49.1 55 63.3 69.1];
B_field6=[ 7.69 12.94 21.15 26.75 34.8 40.3 49.2 54.8 63.2 69.1];

V_H_P1=[ 6 6.8 7.7 8.3 9.1 9.8 10.8 11.5 12.3 12.9]; % hall voltage between probe 1 and 2 for pressure 1
V_H_P2=[ 6.5 7.1 7.8 8.2 9 9.7 10.5 11.1 11.8 12.2]; % hall voltage between probe 1 and 2 for pressure 2
V_H_P3=[ 5.8 6.3 7.2 7.6 8.2 8.8 9.4 10 10.7 11.2]; % hall voltage between probe 1 and 2 for pressure 3
V_H_P4=[ 5.1 5.7 6.3 6.8 7.4 7.9 8.7 9.2 9.7 10]; % hall voltage between probe 1 and 2 for pressure 4
V_H_P5=[ 4.4 4.8 5.3 5.8 6.4 6.8 7.4 7.9 8.5 8.9]; % hall voltage between probe 1 and 2 for pressure 5
V_H_P6=[ 4.1 4.5 4.9 5.4 5.9 6.4 7.1 7.6 8.2 8.6]; % hall voltage between probe 1 and 2 for pressure 6

E_H_P1=1/(0.004)*V_H_P1; % Hall Field for pressure 1
E_H_P2=1/(0.004)*V_H_P2; % Hall Field for pressure 2
E_H_P3=1/(0.004)*V_H_P3; % Hall Field for pressure 3
E_H_P4=1/(0.004)*V_H_P4; % Hall Field for pressure 4
E_H_P5=1/(0.004)*V_H_P5; % Hall Field for pressure 5
E_H_P6=1/(0.004)*V_H_P6; % Hall Field for pressure 6
I_d1=2.08*0.001*ones(1,10);
I_d2=1.83*0.001*ones(1,10);
I_d3=1.56*0.001*ones(1,10);
I_d4=1.25*0.001*ones(1,10);
I_d5=0.98*0.001*ones(1,10);
I_d6=0.72*0.001*ones(1,10);

V_O_P1=48*ones(1,10);
V_O_P2=54*ones(1,10);
V_O_P3=58*ones(1,10);
V_O_P4=63*ones(1,10);
V_O_P5=60*ones(1,10);
V_O_P6=68*ones(1,10);

echarge=1.60217662e-19 % coluombs
emass=9.10938356e-31 %kilograms

v1=[];
 for i=1:length(B_field1)
     z = (0.004*echarge*B_field1(i)*0.001*V_O_P1(i))/(0.075*emass*V_H_P1(i))
     v1= [v1; z];
 end
v1

 v2=[];
 for i=1:length(B_field2)
     z = (0.004*echarge*B_field2(i)*0.001*V_O_P2(i))/(0.075*emass*V_H_P2(i))
     v2= [v2; z];
 end
v2

 v3=[];
 for i=1:length(B_field3)
     z = (0.004*echarge*B_field3(i)*0.001*V_O_P3(i))/(0.075*emass*V_H_P3(i))
     v3= [v3; z];
 end
v3

 v4=[];
 for i=1:length(B_field4)
     z = (0.004*echarge*B_field4(i)*0.001*V_O_P4(i))/(0.075*emass*V_H_P4(i))
     v4= [v4; z];
 end
v4

 v5=[];
 for i=1:length(B_field5)
     z = (0.004*echarge*B_field5(i)*0.001*V_O_P5(i))/(0.075*emass*V_H_P5(i))
     v5= [v5; z];
 end
v5

 v6=[];
 for i=1:length(B_field6)
     z = (0.004*echarge*B_field6(i)*0.001*V_O_P6(i))/(0.075*emass*V_H_P6(i))
     v6= [v6; z];
 end
v6

errb1=[];
 for i=1:length(B_field1)
     z = (0.004*echarge*0.001)/(0.075*emass)*abs(B_field1(i)*V_O_P1(i)/V_H_P1(i))*sqrt((0.1^2)/(B_field1(i))^2+(4)/(V_O_P1(i))^2+(0.2)^2/(V_H_P1(i))^2)
     errb1= [errb1; z];
    
 end
errb1

errb2=[];
 for i=1:length(B_field2)
     z = (0.004*echarge*0.001)/(0.075*emass)*abs(B_field2(i)*V_O_P2(i)/V_H_P2(i))*sqrt((0.1^2)/(B_field2(i))^2+(4)/(V_O_P2(i))^2+(0.2)^2/(V_H_P2(i))^2)
     errb2= [errb2; z];
    
 end
errb2

errb3=[];
 for i=1:length(B_field3)
     z = (0.004*echarge*0.001)/(0.075*emass)*abs(B_field3(i)*V_O_P3(i)/V_H_P3(i))*sqrt((0.1^2)/(B_field3(i))^2+(4)/(V_O_P3(i))^2+(0.2)^2/(V_H_P3(i))^2)
     errb3= [errb3; z];
    
 end
errb3

errb4=[];
 for i=1:length(B_field4)
     z = (0.004*echarge*0.001)/(0.075*emass)*abs(B_field4(i)*V_O_P4(i)/V_H_P4(i))*sqrt((0.1^2)/(B_field4(i))^2+(4)/(V_O_P4(i))^2+(0.2)^2/(V_H_P4(i))^2)
     errb4= [errb4; z];
    
 end
errb4

errb5=[];
 for i=1:length(B_field5)
     z = (0.004*echarge*0.001)/(0.075*emass)*abs(B_field5(i)*V_O_P5(i)/V_H_P5(i))*sqrt((0.1^2)/(B_field5(i))^2+(4)/(V_O_P5(i))^2+(0.2)^2/(V_H_P5(i))^2)
     errb5= [errb5; z];
    
 end
errb5

errb6=[];
 for i=1:length(B_field6)
     z = (0.004*echarge*0.001)/(0.075*emass)*abs(B_field6(i)*V_O_P6(i)/V_H_P6(i))*sqrt((0.1^2)/(B_field6(i))^2+(4)/(V_O_P6(i))^2+(0.2)^2/(V_H_P6(i))^2)
     errb6= [errb6; z];
    
 end
errb6

%%
averagev1=[];
 for i=1:length(B_field1)
     z = v1(i)*k*295/(3.8e-20*15)/133.32
     averagev1= [averagev1; z];
 end
averagev1

averagev2=[];
 for i=1:length(B_field2)
     z = v2(i)*k*295/(3.8e-20*18)/133.322
     averagev2= [averagev2; z];
 end
averagev2

averagev3=[];
 for i=1:length(B_field3)
     z = v3(i)*k*295/(3.8e-20*21)/133.322
     averagev3= [averagev3; z];
 end
averagev3

averagev4=[];
 for i=1:length(B_field4)
     z = v4(i)*k*295/(3.8e-20*24)/133.322
     averagev4= [averagev4; z];
 end
averagev4

averagev5=[];
 for i=1:length(B_field5)
     z = v5(i)*k*295/(3.8e-20*27)/133.322
     averagev5= [averagev5; z];
 end
averagev5

averagev6=[];
 for i=1:length(B_field6)
     z = v6(i)*k*295/(3.8e-20*30)/133.322
     averagev6= [averagev6; z];
 end
averagev6

%% errors
 err1=[];
 for i=1:length(B_field1)
     z = k*295/(3.8e-20*30)/133.322*errb1(i)
     err1= [err1; z];
    
 end
err1

err2=[];
 for i=1:length(B_field2)
     z = k*295/(3.8e-20*30)/133.322*errb2(i)
     err2= [err2; z];
    
 end
err2

err3=[];
 for i=1:length(B_field3)
     z = k*295/(3.8e-20*30)/133.322*errb3(i)
     err3= [err3; z];
    
 end
err3

err4=[];
 for i=1:length(B_field4)
     z = k*295/(3.8e-20*30)/133.322*errb4(i)
     err4= [err4; z];
    
 end
err4

err5=[];
 for i=1:length(B_field5)
     z = k*295/(3.8e-20*30)/133.322*errb5(i)
     err5= [err5; z];
    
 end
err5

err6=[];
 for i=1:length(B_field6)
     z = k*295/(3.8e-20*30)/133.322*errb6(i)
     err6= [err6; z];
    
 end
err6

%%
figure(1)
grid on
xlabel('Hall field (V/m)');
ylabel('Average Velocity (m/s)');
hold on
errorbar(E_H_P1,averagev1,err1,'-ko','MarkerSize', 7)
errorbar(E_H_P2,averagev2,err2,'-k*','MarkerSize', 7)
errorbar(E_H_P3,averagev3,err3,'-kx','MarkerSize', 7)
errorbar(E_H_P4,averagev4,err4,'-ks','MarkerSize', 7)
errorbar(E_H_P5,averagev5,err5,'-k^','MarkerSize', 7)
errorbar(E_H_P6,averagev6,err6,'-kp','MarkerSize', 7)
legend('15 torr', '18 torr', '21 torr', '24 torr', '27 torr', '30 torr', 'Location','NorthWest')
title('Electron Average Velocity vs Hall Field')
hold off


%% electron temperature
T1=[];
 for i=1:length(B_field1)
     z = 1.5*emass/k*averagev1(i)^2*3*pi/8
     T1= [T1; z];
 end
T1

T2=[];
 for i=1:length(B_field2)
     z = 1.5*emass/k*averagev2(i)^2*3*pi/8
     T2= [T2; z];
 end
T2

T3=[];
 for i=1:length(B_field3)
     z = 1.5*emass/k*averagev3(i)^2*3*pi/8
     T3= [T3; z];
 end
T3

T4=[];
 for i=1:length(B_field4)
     z = 1.5*emass/k*averagev4(i)^2*3*pi/8
     T4= [T4; z];
 end
T4

T5=[];
 for i=1:length(B_field5)
     z = 1.5*emass/k*averagev5(i)^2*3*pi/8
     T5= [T5; z];
 end
T5

T6=[];
 for i=1:length(B_field6)
     z = 1.5*emass/k*averagev6(i)^2*3*pi/8
     T6= [T6; z];
 end
T6

%% errors
 erra1=[];
 for i=1:length(B_field1)
     z = 1.5*emass/k*abs(averagev1(i)^2)*sqrt(2*(err1(i))^2/(averagev1(i)^2))
     erra1= [erra1; z];
    
 end
erra1

erra2=[];
 for i=1:length(B_field2)
     z = 1.5*emass/k*abs(averagev2(i)^2)*sqrt(2*(err1(i))^2/(averagev2(i)^2))
     erra2= [erra2; z];
    
 end
erra2

erra3=[];
 for i=1:length(B_field3)
     z = 1.5*emass/k*abs(averagev3(i)^2)*sqrt(2*(err1(i))^2/(averagev3(i)^2))
     erra3= [erra3; z];
    
 end
erra3

erra4=[];
 for i=1:length(B_field4)
     z = 1.5*emass/k*abs(averagev4(i)^2)*sqrt(2*(err1(i))^2/(averagev4(i)^2))
     erra4= [erra4; z];
    
 end
erra4

erra5=[];
 for i=1:length(B_field5)
     z = 1.5*emass/k*abs(averagev5(i)^2)*sqrt(2*(err1(i))^2/(averagev5(i)^2))
     erra5= [erra5; z];
    
 end
erra5

erra6=[];
 for i=1:length(B_field6)
     z = 1.5*emass/k*abs(averagev6(i)^2)*sqrt(2*(err1(i))^2/(averagev6(i)^2))
     erra6= [erra6; z];
    
 end
erra6

%%
figure(2)
grid on
xlabel('Hall field (V/m)');
ylabel('Electron temperature (K)');
hold on
errorbar(E_H_P1,T1,erra1,'-ko')
errorbar(E_H_P2,T2,erra2,'-k*')
errorbar(E_H_P3,T3,erra3,'-kx')
errorbar(E_H_P4,T4,erra4,'-ks')
errorbar(E_H_P5,T5,erra5,'-k^')
errorbar(E_H_P6,T6,erra6,'-kp')
legend('15 torr', '18 torr', '21 torr', '24 torr', '27 torr', '30 torr', 'Location','NorthWest')
title('Electron Temperature vs Hall Field')
hold off

%% mean electron energy
m1=[];
 for i=1:length(B_field1)
     z = 1.5*k*T1(i)/(1.60218e-19)
     m1= [m1; z];
 end
m1

m2=[];
 for i=1:length(B_field2)
     z = 1.5*k*T1(i)/(1.60218e-19)
     m2= [m2; z];
 end
m2

m3=[];
 for i=1:length(B_field3)
     z = 1.5*k*T1(i)/(1.60218e-19)
     m3= [m3; z];
 end
m3

m4=[];
 for i=1:length(B_field4)
     z = 1.5*k*T1(i)/(1.60218e-19)
     m4= [m4; z];
 end
m4

m5=[];
 for i=1:length(B_field5)
     z = 1.5*k*T1(i)/(1.60218e-19)
     m5= [m5; z];
 end
m5

m6=[];
 for i=1:length(B_field6)
     z = 1.5*k*T1(i)/(1.60218e-19)
     m6= [m6; z];
 end
m6

%% errors
 errc1=[];
 for i=1:length(B_field1)
     z = 1.5*k/(1.60218e-19)*erra1(i)
     errc1= [errc1; z];
    
 end
errc1

errc2=[];
 for i=1:length(B_field2)
     z = 1.5*k/(1.60218e-19)*erra2(i)
     errc2= [errc2; z];
    
 end
errc2

errc3=[];
 for i=1:length(B_field3)
     z = 1.5*k/(1.60218e-19)*erra3(i)
     errc3= [errc3; z];
    
 end
errc3

errc4=[];
 for i=1:length(B_field4)
     z = 1.5*k/(1.60218e-19)*erra4(i)
     errc4= [errc4; z];
    
 end
errc4

errc5=[];
 for i=1:length(B_field5)
     z = 1.5*k/(1.60218e-19)*erra5(i)
     errc5= [errc5; z];
    
 end
errc5

errc6=[];
 for i=1:length(B_field6)
     z = 1.5*k/(1.60218e-19)*erra6(i)
     errc6= [errc6; z];
    
 end
errc6

%%
figure(3)
grid on
xlabel('Hall field (V/m)');
ylabel('Mean Electron Energy (eV)');
hold on
errorbar(E_H_P1,m1,errc1,'-ko')
errorbar(E_H_P2,m2,errc2,'-k*')
errorbar(E_H_P3,m3,errc3,'-kx')
errorbar(E_H_P4,m4,errc4,'-ks')
errorbar(E_H_P5,m5,errc5,'-k^')
errorbar(E_H_P6,m6,errc6,'-kp')
legend('15 torr', '18 torr', '21 torr', '24 torr', '27 torr', '30 torr', 'Location','NorthWest')
title('Mean Electron Energy vs Hall Field')
hold off