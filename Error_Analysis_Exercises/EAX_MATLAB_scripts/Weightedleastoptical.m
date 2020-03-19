Current=[0 0.2 0.4 0.6  0.8 1 1.2 1.4 1.6 1.8 2 2.2];
Frequency=[	0.12	0.63	1.18	1.97	2.37	3.17	3.63	4.36	4.48	5.40	6.21	6.98];

xx=[];
 for i=1:length(Current)
     x = (Current(i))^2;
     xx = [xx; x];
 end

 xx
 
 xx=sum(xx)
 
 y=[];
 for i=1:length(Current)
     x = (Frequency(i));
     y = [y; x];
 end
 
 y
 
 y=sum(y)
 
  x1=[];
 for i=1:length(Current)
     x = (Current(i));
     x1 = [x1; x];
 end
 
 x1=sum(x1)
 
   xy=[];
 for i=1:length(Current)
     x = (Current(i))*Frequency(i);
     xy = [xy; x];
 end
 
 xy=sum(xy)
 
    xy=[];
 for i=1:length(Current)
     x = (Current(i))*Frequency(i);
     xy = [xy; x];
 end
 
 xy=sum(xy)
 
    w=[];
 for i=1:length(Current)
     x = 1/(0.06+0.05*Frequency(i))^2;
     w = [w; x];
 end
 
 w=sum(w)
 
;
x1 = linspace(0,2.2);
y1 = x1.*2.97+0.082;
figure
plot(Current,Frequency,'o',x1,y1)
grid on
 