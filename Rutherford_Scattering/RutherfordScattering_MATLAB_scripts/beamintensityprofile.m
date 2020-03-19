degrees=[0 2 4 6 8 10 12 -2 -4]+e;
beamprofile=[beam_0 beam_2up beam_4up beam_6up beam_8up beam_10up beam_12up beam_2down beam_4down];
a1 =       29.54;  
b1 =        4.37 ; 
c1 =       2.477 ;

 
err1=[sqrt(beam_0*300.43)/300.43 sqrt(beam_2up*300.21)/300.21 sqrt(beam_4up*300.37)/300.37 sqrt(beam_6up*300.48)/300.48 sqrt(beam_8up*300.29)/300.29 sqrt(beam_10up*300.01)/300.01 sqrt(beam_12up*300.01)/300.01 sqrt(beam_2down*300.01)/300.01 sqrt(beam_4down*300.01)/300.01]*3;


figure(1)
hold on
errorbar(degrees, beamprofile, err1,'ro')
x=linspace(-4,13);
beamfit=a1*exp(-((x-b1)/c1).^2./2);
plot(x, beamfit, 'k')
ylabel('$\textbf{Beam Intensity }\bf{(\frac{counts}{s})}$','Interpreter','latex','FontSize',12,'FontName','Times New Roman')
xlabel('$\textbf{Protractor Angle (degrees}\bf{^{o})}$','Interpreter','latex','FontSize',12,'FontName','Times New Roman')
title('$\textbf{Beam Profile}$','Interpreter','latex','FontSize',12,'FontName','Times New Roman')
legend({'Measured Data',sprintf('Gaussian Fit, \\mu= 4.37^{o}, \\sigma= 2.477^{o}',b1,c1)},'FontSize',10);
grid on
hold off

chi3=[];
 for i=1:length(degrees)
     z = (beamprofile(i)-(a1*exp(-((degrees(i)-b1)/c1)^2/2)))^2/(err1(i))^2;
     chi3= [chi3; z];
 end
 reducedchi3=(sum(chi3))/(8)
 
 

