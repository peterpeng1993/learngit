N=5;
Xa=rand(1,N);
Ya=rand(1,N);
Xb=1*ones(1,N)+rand(1,N);
Yb=1*ones(1,N)+rand(1,N);
alpha=[0,0,0];
rhout=1;
y=zeros(3,2*N);
for i=1:2*N
    if i<=N
        y(:,i)=[1 Xa(i) Ya(i)]';
    else
        y(:,i)=-[1 Xb(i-N) Yb(i-N)]';
    end
end
T=alpha*y;
n=0;
while(sum(T>0)~=2*N)
    j=1;
    m=1;
    while(j<=2*N&&m>0)
        if alpha*y(:,j)<=0
                alpha=alpha+rhout*y(:,j)';
                m=0;
            else
                j=j+1;
        end
     end    
            T=alpha*y;
            n=n+1;
end
alpha;
disp(['迭代的次数为:',num2str(n)]);
x=0:0.1:3;%直线横坐标
y=-(alpha(1)+alpha(2)*x)/alpha(3);%直线纵坐标
plot(Xa,Ya,'r*');%第一类样本点
hold on
plot(Xb,Yb,'bo');%第二类样本点
hold on
plot(x,y,'k');
xlabel('X');
ylabel('Y');
title('两类样本点');
legend('第一类','第二类','分界直线');
     
