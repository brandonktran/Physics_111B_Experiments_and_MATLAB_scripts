
counts=[127819 70136 44902 34461 25361 20641 20785 18917 16001 13971];
rate=[1000,500,333.333333333333,250,200,166.666666666667,142.857142857143,125,111.111111111111,100]
x1 = linspace(100,1000)
p1 = polyfit(rate,counts,1)
y1 = polyval(p1,x1)

err=counts.^(1/2)

hold on
errorbar(rate,counts,err, 'ro')
xlabel('Repetition Rate (Hz)')
ylabel('Counts')
title('Counts Recorded vs Repetition Rate')
plot(x1,y1, 'k')
legend('Data','Linear Fit');
grid on
hold off

chi=[];
 for i=1:length(counts)
     z = (counts(i)-(p1(1)*rate(i)+p1(2)))^2/(sqrt(counts(i)))^2;
     chi= [chi; z];
 end
 reducedchi=(sum(chi))/8