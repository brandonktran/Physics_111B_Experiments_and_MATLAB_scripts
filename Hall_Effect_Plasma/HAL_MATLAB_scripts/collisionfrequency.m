%% collision frequency for 6 pressures as a function of Hall Field

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

%% errors
 err1=[];
 for i=1:length(B_field1)
     z = (0.004*echarge*0.001)/(0.075*emass)*abs(B_field1(i)*V_O_P1(i)/V_H_P1(i))*sqrt((0.1^2)/(B_field1(i))^2+(4)/(V_O_P1(i))^2+(0.2)^2/(V_H_P1(i))^2)
     err1= [err1; z];
    
 end
err1

err2=[];
 for i=1:length(B_field2)
     z = (0.004*echarge*0.001)/(0.075*emass)*abs(B_field2(i)*V_O_P2(i)/V_H_P2(i))*sqrt((0.1^2)/(B_field2(i))^2+(4)/(V_O_P2(i))^2+(0.2)^2/(V_H_P2(i))^2)
     err2= [err2; z];
    
 end
err2

err3=[];
 for i=1:length(B_field3)
     z = (0.004*echarge*0.001)/(0.075*emass)*abs(B_field3(i)*V_O_P3(i)/V_H_P3(i))*sqrt((0.1^2)/(B_field3(i))^2+(4)/(V_O_P3(i))^2+(0.2)^2/(V_H_P3(i))^2)
     err3= [err3; z];
    
 end
err3

err4=[];
 for i=1:length(B_field4)
     z = (0.004*echarge*0.001)/(0.075*emass)*abs(B_field4(i)*V_O_P4(i)/V_H_P4(i))*sqrt((0.1^2)/(B_field4(i))^2+(4)/(V_O_P4(i))^2+(0.2)^2/(V_H_P4(i))^2)
     err4= [err4; z];
    
 end
err4

err5=[];
 for i=1:length(B_field5)
     z = (0.004*echarge*0.001)/(0.075*emass)*abs(B_field5(i)*V_O_P5(i)/V_H_P5(i))*sqrt((0.1^2)/(B_field5(i))^2+(4)/(V_O_P5(i))^2+(0.2)^2/(V_H_P5(i))^2)
     err5= [err5; z];
    
 end
err5

err6=[];
 for i=1:length(B_field6)
     z = (0.004*echarge*0.001)/(0.075*emass)*abs(B_field6(i)*V_O_P6(i)/V_H_P6(i))*sqrt((0.1^2)/(B_field6(i))^2+(4)/(V_O_P6(i))^2+(0.2)^2/(V_H_P6(i))^2)
     err6= [err6; z];
    
 end
err6
%%
figure(1)
grid on
xlabel('Hall field (V/m)');
ylabel('Collision Frequency (1/s)');
hold on
errorbar(E_H_P1,v1,err1,'-ko','MarkerSize', 7)
errorbar(E_H_P2,v2,err2, '-k*','MarkerSize', 7)
errorbar(E_H_P3,v3,err3,'-kx','MarkerSize', 7)
errorbar(E_H_P4,v4,err4,'-ks','MarkerSize', 7)
errorbar(E_H_P5,v5,err5,'-k^','MarkerSize', 7)
errorbar(E_H_P6,v6,err6,'-kp','MarkerSize', 7)
legend('15 torr', '18 torr', '21 torr', '24 torr', '27 torr', '30 torr', 'Location','NorthEast')
title('Collision Frequency vs Hall Field')
hold off