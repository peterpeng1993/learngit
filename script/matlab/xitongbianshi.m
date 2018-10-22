clear all;
close all;
a=[1,-0.5383, 0.0131]';b=[20.2633,5.1351]';d=1; %对象参数
na=length(a)-1;nb=length(b)-1; %na，nb为ab的阶次
tff=0.98;
L=800;T=1:1:L;                        %仿真长度
uk=zeros(d+nb,1);                     %输入初值
yk=zeros(na,1);                       %输出初值
u=50*randn(L,1);                         %输入
xi=sqrt(0.1)*randn(L,1);              %白噪声序列
thetae_1=zeros(na+nb+1,1);            %theta初值
P=10^6*eye(na+nb+1);                  
for k=1:L
gs=tf([53.5],[4.08e-3,0.177,1]); 
    G=ss(gs); 
   tt=0:0.001:0.1;   
   if k==1
        uu=zeros(101,1);
        [yy,tt,x]=lsim(G,uu,tt);
        x0=x(101,:);
        y(k)=yy(101)+xi(k); 
   end
   
   if k>1
        uu=u(k)*ones(101,1);
       [yy,tt,x]=lsim(G,uu,tt,x0);
        x0=x(101,:);
       y(k)=yy(101)+xi(k);       
   end
    phi=[-yk;uk(d:d+nb)];
    theta(:,k)=[a(2:na+1);b];
    y(k)=phi'*theta(:,k)+xi(k);
  
K=P*phi/(tff+phi'*P*phi);
thetae( : ,k)=thetae_1+K*(y(k)-phi'*thetae_1);
P=(eye(na+nb+1)-K*phi')*P;
   thetae_1=thetae( : ,k);
    for i=d+nb:-1:2
        uk(i)=uk(i-1);
    end
    uk(1)=u(k);
    
    for i=na:-1:2
        yk(i)=yk(i-1);
    end
    yk(1)=y(k);
     
end
figure(1);
plot(T,u)
xlabel('k');ylabel('输入信号u');
figure(2);
plot([1:L],thetae(1:na,:));
hold on;
plot(1:L,theta(1:na,:),'k:');
xlabel('k');ylabel('估计参数a');
legend('a_1','a_2');axis([0 L -0.6 0.6]);
title('递推最小二乘参数辨识曲线');
figure(3)
plot([1:L],thetae(na+1:na+nb+1,:));hold on;
plot(1:L,theta(1+na:na+nb+1,:),'k:');
xlabel('k');ylabel('估计参数b');
legend('b_1','b_2');axis([0 L -25 25]);
title('递推最小二乘参数辨识曲线');

