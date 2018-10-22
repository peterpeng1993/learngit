clear all;
close all;
num=[20.2633,5.1351];den=[1,-0.5383, 0.0131]; %�������
na=2; nb=1; nc=0;d=1; %na��nb��ncΪ����ʽA��B��C�״�
nf=nb+d-1; ng=na-1; %nf��ngΪ����ʽF��G�Ľ״�
L=800;
uk=zeros(d+nf,1);%�����ֵ��uk(i)��ʾu(k-i)
yk=zeros(d+ng,1);%�����ֵ
yr=200*[2.5*ones(L/4,1);-0.9*ones(L/4,1);1.8*ones(L/4,1);-2.6*ones(L/4+d,1)]; %�������
xi=sqrt(1)*randn(L,1); %����������
u0=0; %���롢״̬������ʼ��
t=0:0.001:0.1;
G=ss(tf([53.5],[4.08e-3,0.177,1]));
x0=zeros(1,2);
%���ƹ��Ƴ�ֵ
thetaek=zeros(na+nb+d+nc,d);
P=10^6*eye(na+nb+d+nc);
for k=1:L
    time(k)=k;
     uu=u0*ones(101,1);
     [yy,t,x]=lsim(G,uu,t,x0);
     x0=x(101,:);%��һ��״̬��������ֵ
     y(k)=yy(101)+xi(k);%�������
    %����������С���˷�
    phie=[yk(d:d+ng);uk(d:d+nf)];
    K=P*phie/(1+phie'*P*phie);
    thetae(:,k)=thetaek(:,1)+K*(y(k)-phie'*thetaek(:,1));
    P=(eye(na+nb+d+nc)-K*phie')*P;
    %��ȡ��ʶ����
    ge=thetae(1:ng+1,k)'; fe=thetae(ng+2:ng+nf+2,k)';
    if fe(1)<0.3;%��f0���½�
        fe(1)=0.3;
    end
    u(k)=(-fe(2:nf+1)*uk(1:nf)+yr(k+d)-ge*[y(k);yk(1:na-1)])/fe(1); %������
    
    %��������
    u0=u(k);
    thetaek(:,1)=thetae(:,k);                                                                              
    for i=d+nf:-1:4
        uk(i)=uk(i-1);
    end
    uk(1)=u(k);
    for i=d+ng:-1:2
        yk(i)=yk(i-1);
    end
    yk(1)=y(k); 
end
figure(1);
subplot(2,1,1);
plot(time,yr(1:L),'r:',time,y);
xlabel('k'); ylabel('y_r(k)��y(k)');
legend('y_r(k)','y(k)');axis([0 L -800 800]);
subplot(2,1,2);
plot(time,u);
xlabel('k'); ylabel('u(k)');axis([0 L -400 400]);
figure(2)
plot([1:L],thetae(1:ng+1,:),[1:L],thetae(ng+2:ng+2+nf,:));
xlabel('k'); ylabel('��������g��f');
legend('g_0','g_1','f_0','f_1'); axis([0 L -1 2]);
