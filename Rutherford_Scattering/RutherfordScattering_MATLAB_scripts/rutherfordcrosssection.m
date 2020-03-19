%% Parameters for this experiment
anglerad=[24.4500000000000,19.4500000000000,14.4500000000000,9.45000000000000,7.45000000000000,6.15000000000000,8.15000000000000,10.1500000000000,15.1500000000000,20.1500000000000,25.1500000000000,30.1500000000000];
thickness=0.00025; %cm
solidangle=0.0197; %sr;
incidentintensity=110000;
intensitydetected=[37 99 313 1738 5206 8146 3533 1551 250 86 52 32]; %counts/s
a=2.275e-24; %cm^2/sr
datapoints=12;

%% Constants
n_0=6.022e23;
A=196.96657;
rho=19.32; %gr/cm^3

%%
N=thickness*rho*n_0/A;
ruthfordcrosssection=intensitydetected/(solidangle*incidentintensity*N);

 
%%

err=[];
 for i=1:length(anglerad)
     z = ruthfordcrosssection(i)*sqrt((sqrt(intensitydetected(i)))^2/intensitydetected(i)^2+(sqrt(incidentintensity))^2/incidentintensity^2)*17;
     err= [err; z];
 end
 
figure(1)
b=1./(sin(anglerad*pi/(2*180))).^4;
z=linspace(0,13e4);
p1 = polyfit(b,ruthfordcrosssection,1);
y1 = polyval(p1,z);
k=p1(1)
k1=p1(2);
hold on
plot(z,y1, 'k')
errorbar(b,ruthfordcrosssection,err,'ro')
xlabel('$\bf{\frac{1}{sin^4\frac{\theta}{2}}}$','Interpreter','latex','FontSize',16,'FontName','Times New Roman')
set(gca,'FontName','Times New Roman')
ylabel('$\bf{\frac{d\sigma}{d\Omega}}\hspace{0.1cm}\bf{(\frac{cm^2}{sr})}$','Interpreter','latex','FontSize',15,'FontName','Times New Roman')
set(gca,'FontName','Times New Roman')
title('$\textbf{Differential Cross Section vs}\hspace{0.1cm}\bf{(sin^4(\frac{\theta}{2}))^{-1}}$','Interpreter','latex','FontSize',12,'FontName','Times New Roman')
set(gca,'FontName','Times New Roman')
legend({'Measured Data',sprintf('y=%dx+%d',k,k1)},'FontSize',14);
grid on
hold off


 chi2=[];
 for i=1:length(anglerad)
     z = (ruthfordcrosssection(i)-(k*b(i)+k1))^2/(err(i))^2;
     chi2= [chi2; z];
 end
 reducedchilinear=(sum(chi2))/(datapoints-1)


 %%
x=linspace(6,30);
differentialcrosssection=k./(sin(x*pi/(180*2))).^4;
 
figure(2)
hold on
errorbar(anglerad,ruthfordcrosssection,err,'ro')
plot(x,differentialcrosssection,'k')
%xlim([0 32])
xlabel('$\textbf{Angle (Degrees)}$','Interpreter','latex','FontSize',12,'FontName','Times New Roman')
set(gca,'FontName','Times New Roman')
ylabel('$\bf{\frac{d\sigma}{d\Omega}}\hspace{0.1cm}\bf{(\frac{cm^2}{sr})}$','Interpreter','latex','FontSize',16,'FontName','Times New Roman')
set(gca,'FontName','Times New Roman')
title('$\textbf{Differential Cross Section vs Scattering Angle}$','Interpreter','latex','FontSize',12,'FontName','Times New Roman')
set(gca,'FontName','Times New Roman')
legend({'Measured Data','Fit'},'FontSize',14);
grid on
hold off

chi1=[];
 for i=1:length(anglerad)
     z = (ruthfordcrosssection(i)-(k/(sin(anglerad(i)*pi/(180*2)))^4))^2/(err(i))^2;
     chi1= [chi1; z];
 end
 reducedchicurve=(sum(chi1))/(datapoints-1)
 
%% atomic # and error
atomicnumber=sqrt(k*0.0001)*4*pi*8.854e-12*4*6.040206e-13/((1.6021765e-19)^2*2)

sigy=[];
 for i=1:length(anglerad)
     z = (ruthfordcrosssection(i)-(k*b(i)+k1))^2;
     sigy= [sigy; z];
 end
 sigysquare=sqrt((sum(sigy))/(datapoints-2));
 b2=sum(b).^2;
 bsquare=datapoints*sum(b.^2);
 
sigx=sqrt(datapoints/(bsquare-b2));
 slopeerror=sigysquare*sigx;

 atomicerror=atomicnumber*0.5*slopeerror/k