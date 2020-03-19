Mn54Energy=energy(471:600)
fitMn54=Mn54spectra(471:600);
GaussianFit(Mn54Energy,fitMn54);
%plot(Mn54Energy,fitMn54)

Na22Energy=energy(600:800)
fitNa22=Na22spectra(600:800);
GaussianFit(Na22Energy,fitNa22);
plot(Na22Energy,fitNa22);

cs137Energy=energy(300:600)
fitcs137=cs137spectra(300:600);
GaussianFit(cs137Energy,fitcs137);
plot(cs137Energy,fitcs137);

Co60Energy=energy(650:700)
fitCo60=Co60spectra(650:700);
GaussianFit(Co60Energy,fitCo60)
plot(Co60Energy,fitCo60)
