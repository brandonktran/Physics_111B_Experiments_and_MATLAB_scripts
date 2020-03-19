mu=1;
m=60000;
n=1;
B=exprnd(mu,[m,n]);
mean(B)
std(B)


 MeanArray=[];
 for i=1:600
     B=exprnd(mu,[m,n]);
     x=mean(B);
 
     MeanArray = [MeanArray; x];
 end
 
 std(MeanArray)
 
h=histogram(MeanArray,60);