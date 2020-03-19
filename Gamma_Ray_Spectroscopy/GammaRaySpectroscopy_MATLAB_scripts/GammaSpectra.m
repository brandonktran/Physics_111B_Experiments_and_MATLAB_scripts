%% 
format long

Na22=[0.511 1.27454]
Cs137=[0.66166]
Co60=[1.1732 1.3325]
Mn54=[0.83485]


bin=[328 422 532 637 654 662];
d=[Na22 Cs137 Co60 Mn54];
actualenergies=sort(d);

hold on
%plot(bin, actualenergies, 'o')
x1 = linspace(200,800)
p1 = polyfit(bin,actualenergies,1)
y1 = polyval(p1,x1)
%plot(x1,y1)
s = sprintf('y = (%.1f) x + (%.1f) ',p1(1),p1(2))
grid on
hold off
p1(1)
p1(2)

u;
energy=[];
 for i=1:length(u)
     z = p1(1)*u(i)+p1(2);
     energy= [energy; z];
 end
 energy;



%%
figure(1)
subplot(4,1,1)
plot(v, Co60spectra)
ylabel('Counts')
title('Co60 Spectra')
grid on
subplot(4,1,2)
plot(v, cs137spectra)
ylabel('Counts')
title('Cs137 Spectra')
grid on
subplot(4,1,3)
plot(v, Mn54spectra)
ylabel('Counts')
title('Mn54 Spectra')
grid on
subplot(4,1,4)
plot(v, Na22spectra)
ylabel('Counts')
title('Na22 Spectra')
grid on

%%
figure(3)
plot(v, Co60spectra)
ylabel('Counts')
title('Cs137 Spectra')
grid on
