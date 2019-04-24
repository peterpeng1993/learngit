clc,
clear;
% Bm=rand(1)*1000;
% T=rand(1)*400;
T=300;
N=10;
t=0:1000;
for n=1:N
    Bm=30*rand(1);
    B1=Bm*sin(2*pi*n*t/T)+0.05*gauss(t,0,0.05);
end;
plot(t,B1,'g');
hold off
B2=sum1(N,T,t,Bm);
plot(t,B2,'-. k');
hold off
B0=B1+B2;
plot(t,B0,'c')
title('磁场强度变化')
% label(t,B0,'t','B');
xlabel('t');
ylabel('B');
legend('B0');
grid on
