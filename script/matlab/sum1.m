function B1=sum1(N,T,t,Bm);
B1=0;
for n=1:N
Bm=30*rand(1);
B1=Bm*sin(2*pi*n*t/T)+B1;
end;