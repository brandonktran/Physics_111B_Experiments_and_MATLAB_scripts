A1=randn(800,1);
M1=mean(A1)
S1=std(A1)

A=randn(800,2000);

%x=["The list of seven random numbers is",A]
%disp(x)

M=mean(A,1);

%X=["The mean of the seven random numbers is",M]

%disp(X)

S=std(A);

P=std(M)

%X=["The standard deviation of the seven random numbers is",M]

%disp(X)

for i=1:length(S)
    sigma(i)=1/sqrt(7);
    sigma;
    
end
   
%X=["The standard error of the mean on the seven random numbers is",sigma]
%disp(["The standard error of the mean on the seven random numbers is",sigma])

sigma;

x=transpose(M);
xbins= -1.2376:0.01768:1.2376;
h=histogram(x,xbins);
h.Values