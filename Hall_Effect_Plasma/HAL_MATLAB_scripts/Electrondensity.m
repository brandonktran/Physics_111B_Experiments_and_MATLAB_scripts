
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
%% electron density for 6 pressures as a function of Hall Field

%not sure if I_d changes as hall field/magnetic field changes
I_d1=2.08*0.001*ones(1,11);
I_d2=1.83*0.001*ones(1,11);
I_d3=1.56*0.001*ones(1,11);
I_d4=1.25*0.001*ones(1,11);
I_d5=0.98*0.001*ones(1,11);
I_d6=0.72*0.001*ones(1,11);
echarge=1.60217662e-19; % coluombs

n1=[];
 for i=1:length(B_field1)
     z = I_d1(i)*B_field1(i)*0.001/(pi*echarge*0.004*V_H_P1(i))
     n1= [n1; z];
 end
n1

 n2=[];
 for i=1:length(B_field2)
     z = I_d2(i)*B_field2(i)*0.001/(pi*echarge*0.004*V_H_P2(i))
     n2= [n2; z];
 end
n2

 n3=[];
 for i=1:length(B_field3)
     z = I_d3(i)*B_field3(i)*0.001/(pi*echarge*0.004*V_H_P3(i))
     n3= [n3; z];
 end
n3

 n4=[];
 for i=1:length(B_field4)
     z = I_d4(i)*B_field4(i)*0.001/(pi*echarge*0.004*V_H_P4(i))
     n4= [n4; z];
 end
n4

 n5=[];
 for i=1:length(B_field5)
     z = I_d5(i)*B_field5(i)*0.001/(pi*echarge*0.004*V_H_P5(i))
     n5= [n5; z];
 end
n5

 n6=[];
 for i=1:length(B_field6)
     z = I_d6(i)*B_field6(i)*0.001/(pi*echarge*0.004*V_H_P6(i))
     n6= [n6; z];
 end
n6

%% errors 0.002 for I 
err1=[];
 for i=1:length(B_field1)
     z=0.001/(pi*echarge*0.004)*abs(I_d1(i)*B_field1(i)/V_H_P1(i))*sqrt(2^2/(V_H_P1(i))^2+(0.1)^2/(B_field1(i))^2+(0.0002)^2/(I_d1(i))^2)/4
     err1= [err1; z];
    
 end
err1

err2=[];
 for i=1:length(B_field2)
     z=0.001/(pi*echarge*0.004)*abs(I_d2(i)*B_field2(i)/V_H_P2(i))*sqrt(2^2/(V_H_P2(i))^2+(0.1)^2/(B_field2(i))^2+(0.0002)^2/(I_d2(i))^2)/4
     err2= [err2; z];
    
 end
err2

err3=[];
 for i=1:length(B_field3)
     z=0.001/(pi*echarge*0.004)*abs(I_d3(i)*B_field3(i)/V_H_P3(i))*sqrt(2^2/(V_H_P3(i))^2+(0.1)^2/(B_field3(i))^2+(0.0002)^2/(I_d3(i))^2)/4
     err3= [err3; z];
    
 end
err3

err4=[];
 for i=1:length(B_field4)
     z=0.001/(pi*echarge*0.004)*abs(I_d2(i)*B_field4(i)/V_H_P4(i))*sqrt(2^2/(V_H_P4(i))^2+(0.1)^2/(B_field4(i))^2+(0.0002)^2/(I_d4(i))^2)/4
     err4= [err4; z];
    
 end
err4

err5=[];
 for i=1:length(B_field5)
     z=0.001/(pi*echarge*0.004)*abs(I_d5(i)*B_field5(i)/V_H_P5(i))*sqrt(2^2/(V_H_P5(i))^2+(0.1)^2/(B_field5(i))^2+(0.0002)^2/(I_d5(i))^2)/4
     err5= [err5; z];
    
 end
err5

err6=[];
 for i=1:length(B_field6)
     z=0.001/(pi*echarge*0.004)*abs(I_d6(i)*B_field6(i)/V_H_P6(i))*sqrt(2^2/(V_H_P6(i))^2+(0.1)^2/(B_field6(i))^2+(0.0002)^2/(I_d6(i))^2)/4
     err6= [err6; z];
    
 end
err6

%%
figure(1)
grid on
xlabel('Drift Velocity (m/s)');
ylabel('Electron Density (m^{-3})');
hold on
errorbar(u1,n1,err1,'-ko','MarkerSize', 7)
errorbar(u2,n2,err2,'-k*','MarkerSize', 7)
errorbar(u3,n3,err3,'-kx','MarkerSize', 7)
errorbar(u4,n4,err4,'-ks','MarkerSize', 7)
errorbar(u5,n5,err5,'-k^','MarkerSize', 7)
errorbar(u6,n6,err6,'-kp','MarkerSize', 7)
legend('15 torr', '18 torr', '21 torr', '24 torr', '27 torr', '30 torr')
title('Electron Density vs Electron Drift Velocity')
hold off