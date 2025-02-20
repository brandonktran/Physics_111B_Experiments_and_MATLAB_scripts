%%Data
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

%% Drift Velocity of Electrons for 6 pressures as a function of Hall Field
 u1=[];
 for i=1:length(B_field1)
     z = V_H_P1(i)/B_field1(i)*(1/0.000004)
     u1= [u1; z];
 end
u1

 u2=[];
 for i=1:length(B_field2)
     z = V_H_P2(i)/B_field2(i)*(1/0.000004)
     u2= [u2; z];
 end
u2

 u3=[];
 for i=1:length(B_field3)
     z = V_H_P3(i)/B_field3(i)*(1/0.000004)
     u3= [u3; z];
 end
u3

 u4=[];
 for i=1:length(B_field4)
     z = V_H_P4(i)/B_field4(i)*(1/0.000004)
     u4= [u4; z];
 end
u4

 u5=[];
 for i=1:length(B_field5)
     z = V_H_P5(i)/B_field5(i)*(1/0.000004)
     u5= [u5; z];
 end
u5

 u6=[];
 for i=1:length(B_field6)
     z = V_H_P6(i)/B_field6(i)*(1/0.000004)
     u6= [u6; z];
 end
u6

%% 0.2 ans 0.0001 error

 err1=[0];
 for i=2:length(E_H_P1)
     z = (1/0.000004)*abs(V_H_P1(i)/B_field1(i))*sqrt((2)^2/(V_H_P1(i))^2+(0.1)^2/(B_field1(i))^2)/3
     err1= [err1; z];
 end
err1

 err2=[0];
 for i=2:length(E_H_P2)
     z = (1/0.000004)*abs(V_H_P2(i)/B_field2(i))*sqrt((2)^2/(V_H_P2(i))^2+(0.1)^2/(B_field2(i))^2)/3
     err2= [err2; z];
 end
err2

 err3=[0];
 for i=2:length(E_H_P3)
     z = (1/0.000004)*abs(V_H_P3(i)/B_field3(i))*sqrt((2)^2/(V_H_P3(i))^2+(0.1)^2/(B_field3(i))^2)/3
     err3= [err3; z];
 end
err3

 err4=[0];
 for i=2:length(E_H_P4)
     z = (1/0.000004)*abs(V_H_P4(i)/B_field4(i))*sqrt((2)^2/(V_H_P4(i))^2+(0.1)^2/(B_field4(i))^2)/3
     err4= [err4; z];
 end
err4

 err5=[0];
 for i=2:length(E_H_P5)
     z = (1/0.000004)*abs(V_H_P5(i)/B_field5(i))*sqrt((2)^2/(V_H_P5(i))^2+(0.1)^2/(B_field5(i))^2)/3
     err5= [err5; z];
 end
err5

 err6=[0];
 for i=2:length(E_H_P6)
     z = (1/0.000004)*abs(V_H_P6(i)/B_field6(i))*sqrt((2)^2/(V_H_P6(i))^2+(0.1)^2/(B_field6(i))^2)/3
     err6= [err6; z];
 end
err6


%%
figure(1)
grid on
xlabel('Hall field (V/m)');
ylabel('Drift Velocity (m/s)');
hold on
errorbar(E_H_P1,u1,err1,'-ko','MarkerSize', 7)
errorbar(E_H_P2,u2,err2,'-.k*','MarkerSize', 7)
errorbar(E_H_P3,u3,err3,'--kx','MarkerSize', 7)
errorbar(E_H_P4,u4,err4,'-ks','MarkerSize', 7)
errorbar(E_H_P5,u5,err5,'-.k^','MarkerSize', 7)
errorbar(E_H_P6,u6,err6,'--kp','MarkerSize', 7)
legend('15 torr', '18 torr', '21 torr', '24 torr', '27 torr', '30 torr')
title('Drift Velocity vs Hall Field')
hold off