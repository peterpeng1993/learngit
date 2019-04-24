clear
clc
l=3;    m=1;    R=4;      A=3;
delta=pi/40;
theta0=0:delta:pi;
phi=0:2*delta:2*pi;                      %球函数Y(m,l)(theta,phi)的相关初始参数
[phi,theta]=meshgrid(phi,theta0);

Ymn=legendre(1,cos(theta0));     %计算勒让德函数的值
Ymn=Ymn(m+1, :)';
L=size(theta,1);
yy=repmat(Ymn,1,L);
Reyy=yy.*cos(m*phi);
Imyy=yy.*sin(m*phi);

ReM=max(max(Reyy));
Rerho=R+A*Reyy/ReM;

Rer=Rerho.*sin(theta);
Rex=Rer.*cos(phi);
Rey=Rer.*sin(phi);
Rez=Rerho.*cos(theta);

subplot(1,2,1)
surf(Rex,Rey,Rez)
light
lighting phong
axis('square')
axis([-5 5 -5 5 -5 5])
axis('off')
view(40,30)
title('实球谐函数')
ImM=max(max(abs(Imyy)));
Imrho=R+A*Imyy/(ImM+eps*(ImM==0));
Im=max(max(abs(Imyy)));
Imrho=R+A*Imyy/(ImM+eps*(ImM==0));

Imr=Imrho.*sin(theta);
Imx=Imr.*cos(phi);
Imy=Imr.*sin(phi);
Imz=Imrho.*cos(theta);

subplot(1,2,2)
surf(Imx,Imy,Imz);
light
lighting phong
axis('square')
axis([-5 5 -5 5 -5 5])
axis('off')
view(40,30)
title('虚球谐函数')

figure
subplot(3,1,1)
surf(theta,phi,Reyy)
xlabel('\theta')
ylabel('\phi')

subplot(3,1,2)
surf(theta,phi,Imyy)
xlabel('\theta')
ylabel('\phi')

subplot(3,1,3)
yy2=Reyy.^2+Imyy.^2;
surf(theta,phi,yy2)
xlabel('\theta')
ylabel('\phi')