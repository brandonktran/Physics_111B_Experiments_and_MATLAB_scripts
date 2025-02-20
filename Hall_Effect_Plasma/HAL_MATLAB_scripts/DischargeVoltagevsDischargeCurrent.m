
V_O_P1=48*ones(1,12); % ohmic voltage/discharge current V_D between probe 2 and 3 for pressure 1
V_O_P2=52*ones(1,12); % ohmic voltage/discharge current V_D between probe 2 and 3 for pressure 2
V_O_P3=58*ones(1,10); % ohmic voltage/discharge current V_D between probe 2 and 3 for pressure 3
V_O_P4=64*ones(1,10); % ohmic voltage/discharge current V_D between probe 2 and 3 for pressure 4
V_O_P5=68*ones(1,6); % ohmic voltage/discharge current V_D between probe 2 and 3 for pressure 5
V_O_P6=72*ones(1,4); % ohmic voltage/discharge current V_D between probe 2 and 3 for pressure 6

E_O_P1=1/(0.075)*V_O_P1; %Ohmic Field for pressure 1
E_O_P2=1/(0.075)*V_O_P2; %Ohmic Field for pressure 2
E_O_P3=1/(0.075)*V_O_P3; %Ohmic Field for pressure 3
E_O_P4=1/(0.075)*V_O_P4; %Ohmic Field for pressure 4
E_O_P5=1/(0.075)*V_O_P5; %Ohmic Field for pressure 5
E_O_P6=1/(0.075)*V_O_P6; %Ohmic Field for pressure 6

I_d1=[0.95 1.05 1.18 1.25 1.38 1.45 1.503 1.65 1.78 1.83 1.95 2.03];
I_d2=[0.72 0.81 0.95 1.05 1.11 1.2 1.33 1.45 1.503 1.6 1.73 1.82];
I_d3=[0.68 0.78 0.88 0.98 1.08 1.18 1.28 1.38 1.48 1.55];
I_d4=[0.33 0.42 0.55 0.7 0.78 0.9 1 1.08 1.2 1.28];
I_d5=[0.6 0.6 0.7 0.8 0.9 1];
I_d6=[0.35 0.45 0.6 0.7];

%%
x1 = linspace(0.8,2.1);
x2 = linspace(0.6,1.95);
x3 = linspace(0.55,1.7);
x4 = linspace(0.25,1.4);
x5 = linspace(0.4,1.1);
x6 = linspace(0.25,0.8);
p1 = polyfit(I_d1,V_O_P1,1);
y1 = polyval(p1,x1);
p2 = polyfit(I_d2,V_O_P2,1);
y2 = polyval(p2,x2);
p3 = polyfit(I_d3,V_O_P3,1);
y3 = polyval(p3,x3);
p4 = polyfit(I_d4,V_O_P4,1);
y4 = polyval(p4,x4);
p5 = polyfit(I_d5,V_O_P5,1);
y5 = polyval(p5,x5);
p6 = polyfit(I_d6,V_O_P6,1);
y6 = polyval(p6,x6);
%% discharge voltage vs discharge current
figure(1)
grid on
xlabel('Discharge Current (mA)');
ylabel('Discharge Voltage (V)');
hold on
err1=1.5*ones(1,12);
err2=1.5*ones(1,10);
err3=1.5*ones(1,6);
err4=1.5*ones(1,4);

errorbar(I_d1,V_O_P1,err1,'-.ko','MarkerSize', 7)
errorbar(I_d2,V_O_P2,err1,'-.k*','MarkerSize', 7)
errorbar(I_d3,V_O_P3,err2,'-.kx','MarkerSize', 7)
errorbar(I_d4,V_O_P4,err2,'-.ks','MarkerSize', 7)
errorbar(I_d5,V_O_P5,err3,'-.k^','MarkerSize', 7)
errorbar(I_d6,V_O_P6,err4,'-.kp','MarkerSize', 7)
title('Discharge Voltage vs Discharge Current')
legend('15 torr', '18 torr', '21 torr', '24 torr', '27 torr', '30 torr')
hold off


