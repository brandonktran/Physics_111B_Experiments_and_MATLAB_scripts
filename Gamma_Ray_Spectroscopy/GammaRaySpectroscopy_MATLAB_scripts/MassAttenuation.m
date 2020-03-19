%%
Cuthickness=[0 0.75 2.14 6.38 15.25];
Althickness=[0 1.1 6.42 9.715 25.45];
Pbthickness=[0 0.52 5.29 10.655];
NaCu=[22536 21372 19674 14856 8429];
NaAl=[22536 22218 19409 18684 13512];
NaPb=[22536 18121 2492 3117];
CsCu=[9621 9308 8426 6604 4032];
CsAl=[9621 9507 8589 8199 6031];
CsPb=[9621 8221 5106 2237];



%%
figure(1)
subplot(3,1,1)
logy1=log(NaCu);
p1=polyfit(Cuthickness,logy1,1);
err=sqrt(logy1)./(logy1);
errorbar(Cuthickness,logy1,err, 'ro')
grid on
xlabel('Cu Thickness (mm)');
ylabel('ln(N)');
k1=p1(1);
loga1=p1(2);
a1=exp(loga1);
hold on; plot(Cuthickness,k1*Cuthickness+loga1,'k')
legend('Measured Data',sprintf('y=%.3f{}x+ln(%.3f)',k1,a1));
title('Na source with Cu absorber')
hold off

chi1=[];
 for i=1:length(Cuthickness)
     z = (logy1(i)-(p1(1)*Cuthickness(i)+p1(2)))^2/(sqrt(logy1(i))./(logy1(i)))^2;
     chi1= [chi1; z];
 end
 reducedchi1=(sum(chi1))/3



subplot(3,1,2)
logy2=log(NaAl);
p2=polyfit(Althickness,logy2,1);
err=sqrt(logy2)./(logy2);
errorbar(Althickness,logy2,err, 'ro')
grid on
xlabel('Al Thickness (mm)');
ylabel('ln(N)');
k2=p2(1);
loga2=p2(2);
a2=exp(loga2);
hold on; plot(Althickness,k2*Althickness+loga2,'k')
legend('Measured Data',sprintf('y=%.3f{}x+ln(%.3f)',k2,a2));
title('Na source with Al absorber')
hold off

chi2=[];
 for i=1:length(Althickness)
     z = (logy2(i)-(p2(1)*Althickness(i)+p2(2)))^2/(sqrt(logy2(i))/(logy2(i)))^2;
     chi2= [chi2; z];
 end
 reducedchi2=(sum(chi2))/3

subplot(3,1,3)
logy3=log(NaPb);
p3=polyfit(Pbthickness,logy3,1);
err=sqrt(logy3)./(logy3);
errorbar(Pbthickness,logy3,err, 'ro')
grid on
xlabel('Pb Thickness (mm)');
ylabel('ln(N)');
k3=p3(1);
loga3=p3(2);
a3=exp(loga3);
hold on; plot(Pbthickness,k3*Pbthickness+loga3,'k')
legend('Measured Data',sprintf('y=%.3f{}x+ln(%.3f)',k3,a3));
title('Na source with Pb absorber')
hold off

chi3=[];
 for i=1:length(Pbthickness)
     z = (logy3(i)-(p3(1)*Pbthickness(i)+p3(2)))^2/(sqrt(logy3(i))/(logy3(i)))^2;
     chi3= [chi3; z];
 end
 reducedchi3=(sum(chi3))/2


%%
figure(2)
subplot(3,1,1)
logy4=log(CsCu);
p4=polyfit(Cuthickness,logy4,1);
err=sqrt(logy4)./(logy4);
errorbar(Cuthickness,logy4,err, 'ro')
grid on
xlabel('Cu Thickness (mm)');
ylabel('ln(N)');
k4=p4(1);
loga4=p4(2);
a4=exp(loga4);
hold on; plot(Cuthickness,k4*Cuthickness+loga4,'k')
legend('Measured Data',sprintf('y=%.3f{}x+ln(%.3f)',k4,a4));
title('Cs source with Cu absorber')
hold off

chi4=[];
 for i=1:length(Cuthickness)
     z = (logy4(i)-(p4(1)*Cuthickness(i)+p4(2)))^2/(sqrt(logy4(i))./(logy4(i)))^2;
     chi4= [chi4; z];
 end
 reducedchi4=(sum(chi4))/3


subplot(3,1,2)
logy5=log(CsAl);
p5=polyfit(Althickness,logy5,1);
err=sqrt(logy5)./(logy5);
errorbar(Althickness,logy5,err, 'ro')
grid on
xlabel('Al Thickness (mm)');
ylabel('ln(N)');
k5=p5(1);
loga5=p5(2);
a5=exp(loga5);
hold on; plot(Althickness,k5*Althickness+loga5,'k')
legend('Measured Data',sprintf('y=%.3f{}x+ln(%.3f)',k5,a5));
title('Cs source with Al absorber')
hold off

chi5=[];
 for i=1:length(Althickness)
     z = (logy5(i)-(p5(1)*Althickness(i)+p5(2)))^2/(sqrt(logy5(i))./(logy5(i)))^2;
     chi5= [chi5; z];
 end
 reducedchi5=(sum(chi5))/3

subplot(3,1,3)
logy6=log(CsPb);
p6=polyfit(Pbthickness,logy6,1);
err=sqrt(logy6)./(logy6);
errorbar(Pbthickness,logy6,err, 'ro')
grid on
xlabel('Pb Thickness (mm)');
ylabel('ln(N)');
k6=p6(1);
loga6=p6(2);
a6=exp(loga6);
hold on; plot(Pbthickness,k6*Pbthickness+loga6,'k')
legend('Measured Data',sprintf('y=%.3f{}x+ln(%.3f)',k6,a6));
title('Cs source with Pb absorber')
hold off

chi6=[];
 for i=1:length(Pbthickness)
     z = (logy6(i)-(p6(1)*Pbthickness(i)+p6(2)))^2/(sqrt(logy6(i))./(logy6(i)))^2;
     chi6= [chi6; z];
 end
 reducedchi6=(sum(chi6))/2

%% Na22 Cu slope error

mu1=mean(Cuthickness);

sigmax1=[];
 for i=1:length(NaCu)
     z =(Cuthickness(i)-mu1)^2;
     sigmax1= [sigmax1; z];
 end
 
 sigmax1=sum(sigmax1);

sigmay1=[];
 for i=1:length(NaCu)
     z =(logy1(i)-(k1*Cuthickness(i)+log(a1)))^2;
     sigmay1= [sigmay1; z];
 end
 
 sigmay1=1/3*sum(sigmay1);
 
 sigmam1=sqrt(sigmay1/sigmax1);
 
 
 %% Na22 Al slope error

mu2=mean(Althickness);

sigmax2=[];
 for i=1:length(NaAl)
     z =(Althickness(i)-mu2)^2;
     sigmax2= [sigmax2; z];
 end
 
 sigmax2=sum(sigmax2);

sigmay2=[];
 for i=1:length(NaAl)
     z =(logy2(i)-(k2*Althickness(i)+log(a2)))^2;
     sigmay2= [sigmay2; z];
 end
 
 sigmay2=1/3*sum(sigmay2);
 
 sigmam2=sqrt(sigmay2/sigmax2);
 
 
 %% Na22 Pb slope error

mu3=mean(Pbthickness);

sigmax3=[];
 for i=1:length(NaPb)
     z =(Pbthickness(i)-mu1)^2;
     sigmax3= [sigmax3; z];
 end
 
 sigmax3=sum(sigmax3);

sigmay3=[];
 for i=1:length(NaPb)
     z =(logy3(i)-(k3*Pbthickness(i)+log(a3)))^2;
     sigmay3= [sigmay3; z];
 end
 
 sigmay3=1/3*sum(sigmay3);
 
 sigmam3=sqrt(sigmay3/sigmax3);
 
 %% Cs137 Cu slope error

mu1=mean(Cuthickness);

sigmax4=[];
 for i=1:length(CsCu)
     z =(Cuthickness(i)-mu1)^2;
     sigmax4= [sigmax4; z];
 end
 
 sigmax4=sum(sigmax4);

sigmay4=[];
 for i=1:length(CsCu)
     z =(logy4(i)-(k4*Cuthickness(i)+log(a4)))^2;
     sigmay4= [sigmay4; z];
 end
 
 sigmay4=1/3*sum(sigmay4);
 
 sigmam4=sqrt(sigmay4/sigmax4);
 
 
  %% Cs137 Al slope error

mu2=mean(Althickness);

sigmax5=[];
 for i=1:length(CsAl)
     z =(Althickness(i)-mu2)^2;
     sigmax5= [sigmax5; z];
 end
 
 sigmax5=sum(sigmax5);

sigmay5=[];
 for i=1:length(CsAl)
     z =(logy5(i)-(k2*Althickness(i)+log(a5)))^2;
     sigmay5= [sigmay5; z];
 end
 
 sigmay5=1/3*sum(sigmay5);
 
 sigmam5=sqrt(sigmay5/sigmax5);
 
  %% Cs137 Pb slope error

mu3=mean(Pbthickness);

sigmax6=[];
 for i=1:length(CsPb)
     z =(Pbthickness(i)-mu1)^2;
     sigmax6= [sigmax6; z];
 end
 
 sigmax6=sum(sigmax6);

sigmay6=[];
 for i=1:length(CsPb)
     z =(logy6(i)-(k6*Pbthickness(i)+log(a6)))^2;
     sigmay6= [sigmay6; z];
 end
 
 sigmay6=1/3*sum(sigmay6);
 
 sigmam6=sqrt(sigmay6/sigmax6);
 
 
 
