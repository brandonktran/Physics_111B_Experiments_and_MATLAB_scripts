x = 0.5:0.5:3;
y = exp(x);

figure
semilogy(x,y)

err=10./(log(10).*y)
hold
grid on
errorbar(x,y,err)
semilogy(x,y)
