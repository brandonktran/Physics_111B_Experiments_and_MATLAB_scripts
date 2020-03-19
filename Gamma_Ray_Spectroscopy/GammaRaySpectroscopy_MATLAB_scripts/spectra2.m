%% 
format long
random
random1

Na22=[0.511 1.27454]
Cs137=[0.66166]
Co60=[1.1732 1.3325]
Mn54=[0.83485]
CE=[ 0.16787 0.47734 1.06171]
%ComptonEdge=sort(CE)

bin=[35 272 328 422 532 611 637 654 662];
d=[Na22 Cs137 Co60 Mn54 CE];
actualenergies=sort(d);

figure(1)
hold on
plot(bin, actualenergies, 'o')
x1 = linspace(0,800)
p1 = polyfit(bin,actualenergies,2)
y1 = polyval(p1,x1)
plot(x1,y1)
s = sprintf('y = (%.1f) x + (%.1f) ',p1(1),p1(2),p1(3))
legend('Data',sprintf('y=%.5f{}(bin)^2+%.5f(bin)+%.3f{}',p1(1),p1(2),p1(3)));
grid on
hold off
p1(1)
p1(2)

u;
energy=[];
 for i=1:length(u)
     z = p1(1)*u(i)^2+p1(2)*u(i)+p1(3);
     energy= [energy; z];
 end
 energy;

%%
figure(2)
subplot(4,1,1)
plot(energy, Co60spectra)
xlabel('Energy (MeV)')
ylabel('Counts')
title('^{60}Co Spectra')
xlim([0.182,2])
grid on
subplot(4,1,2)
plot(energy, cs137spectra)
xlabel('Energy (MeV)')
ylabel('Counts')
title('^{137}Cs Spectra')
xlim([0.182,2])
grid on
subplot(4,1,3)
plot(energy, Mn54spectra)
xlabel('Energy (MeV)')
ylabel('Counts')
title('^{54}Mn Spectra')
xlim([0.182,2])
grid on
subplot(4,1,4)
plot(energy, Na22spectra)
xlabel('Energy (MeV)')
ylabel('Counts')
title('^{22}Na Spectra')
xlim([0.182,2])
grid on


u;
chi=[];
 for i=1:length(actualenergies)
     z = (actualenergies(i)-(p1(1)*bin(i)^2+p1(2)*bin(i)+p1(3)))^2/(0.0097)^2;
     chi= [chi; z];
 end
 chi;
 reducedchi=sum(chi)/(6)


