distance1=[25.5 30.5 35.5 40.5 45.5 50.5 65.5 75.5];
counts1=[14929 14338 13786 13345 12815 9810 7746 6341];
distance=[ 40.5 45.5 50.5 65.5 75.5];
counts=[ 13345 12815 9810 7746 6341];

figure(1)
logx=log(distance);
logy=log(counts);
p=polyfit(logx,logy,1);
err=2*sqrt(counts)./(counts);
errorbar(logx,logy,err, 'ro')
axis equal square
grid
xlabel('log(Distance(cm))');
ylabel('log(Counts)');
title('Log-Log plot of Counts vs Distance')
k=p(1);
loga=p(2);
a=exp(loga);
hold on; plot(logx,k*logx+loga,'k')
legend('Data','Linear Fit');


chi=[];
 for i=1:length(counts)
     z = (logy(i)-(p(1)*logx(i)+p(2)))^2/(sqrt(counts(i))./(counts(i)))^2;
     chi= [chi; z];
 end
 reducedchi=(sum(chi))/3
 

