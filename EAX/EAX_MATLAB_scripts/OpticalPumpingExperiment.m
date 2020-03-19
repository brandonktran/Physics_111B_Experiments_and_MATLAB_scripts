
format long
Current=[0 0.4 0.8 1.2 1.6 2 2.4 2.8 3.2 3.6 4 4.4];
Frequency=[	0.12	0.63	1.18	1.97	2.37	3.17	3.63	4.36	4.48	5.40	6.21	6.98];

p = polyfit(Current,Frequency,1);
x1 = linspace(0,4.4);
y1 = polyval(p,x1);
figure
plot(Current,Frequency,'o')
hold on
plot(x1,y1)
grid on
s = sprintf('y = (%.1f) x + (%.1f)',p(1),p(2))
p(1)

p(2)
text(2,400,s)
hold off

 wy=[];
 for i=1:length(Current)
     x = (Frequency(i)-(2.045*Current(i)+0.025))^2/(0.16)^2;
     wy = [wy; x];
 end
 
chisquaredvalue=sum(wy)/10;

chisquaredvalue

diffy=[];
 for i=1:length(Current)
     x = abs((Frequency(i)-(1.522727272727272*Current(i)+0.024999999999999)))^2;
     diffy = [diffy; x];
 end
 sqrt(sum(diffy)/(10))
 
 sum(Current)/12
 
diffx=[];
 for i=1:length(Current)
     x = abs((Current(i)-(2.2)))^2;
     diffx = [diffx; x];
 end
 
 sum(diffx)
 
 
 
