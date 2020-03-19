Current=[0 0.2 0.4 0.6  0.8 1 1.2 1.4 1.6 1.8 2 2.2];
Frequency=[	0.12	0.63	1.18	1.97	2.37	3.17	3.63	4.36	4.48	5.40	6.21	6.98];

wxx=[];
 for i=1:length(Current)
     x = 1/((0.06+0.05*Frequency(i)))^2*(Current(i))^2;
     wxx = [wxx; x];
 end

 wxx
 
 wxx=sum(wxx)
 
 wy=[];
 for i=1:length(Current)
     x = 1/((0.06+0.05*Frequency(i)))^2*(Frequency(i));
     wy = [wy; x];
 end
 
 wy
 
 wy=sum(wy)
 
  wx=[];
 for i=1:length(Current)
     x = 1/((0.06+0.05*Frequency(i)))^2*(Current(i));
     wx = [wx; x];
 end
 
 wx=sum(wx)
 
   wxy=[];
 for i=1:length(Current)
     x = 1/((0.06+0.05*Frequency(i)))^2*(Current(i))*Frequency(i);
     wxy = [wxy; x];
 end
 
 wxy=sum(wxy)
 
    wxy=[];
 for i=1:length(Current)
     x = 1/((0.06+0.05*Frequency(i)))^2*(Current(i))*Frequency(i);
     wxy = [wxy; x];
 end
 
 wxy=sum(wxy)
 
    w=[];
 for i=1:length(Current)
     x = 1/(0.06+0.05*Frequency(i))^2;
     w = [w; x];
 end
 
 w=sum(w)
 
;
x1 = linspace(0,2.2);
y1 = x1.*3.045+0.025;
figure
plot(Current,Frequency,'o',x1,y1)
grid on
 