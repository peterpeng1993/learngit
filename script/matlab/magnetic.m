clear;
clc
figure(1)
a=0.35; y=-1:0.04:1; the=0:pi/20:2*pi;
[Y,Z,T]=meshgrid(y,y,the);
r=sqrt(a*cos(T).^2+Z.^2+(Y-a*sin(T)).^2);
r3=r.^3;
dby=a*Z.*sin(T)./r3;      by=pi/40*trapz(dby,3);
dbz=a*(a-Y.*sin(T))./r3;      bz=pi/40*trapz(dbz,3);

subplot(1,2,1) 
[bSY,bSZ]=meshgrid([0:0.05:0.2],0);
h1=streamline(Y(:,:,1),Z(:,:,1),by,bz,bSY,bSZ,[0.1,1000]);
h2=copyobj(h1,gca);
rotate(h2,[1,0,0],180,[0,0,0]);
h3=copyobj(allchild(gca),gca);
rotate(h3,[0,1,0],180,[0,0,0]);
title('磁场的二维图','fontsize',15);
for kk=1:4
    [bSY,bSZ]=meshgrid(0.2+kk*0.02,0);
    streamline(Y(:,:,1),Z(:,:,1),by,bz,bSY,bSZ,[0.02/(kk+1),4500]);
    streamline(-Y(:,:,1),Z(:,:,1),-by,bz,-bSY,bSZ,[0.02/(kk+1),4500]);  
end
[X,Y,Z]=meshgrid(-0.5:0.04:0.5);
r2=X.^2+Y.^2+Z.^2;
for k=1:81
    phi=pi/40*(k-1);   costh=cos(phi);  sinth=sin(phi);
    R3=(r2+a^2-2*a*(X*costh+Y*sinth)).^(3/2);
    Bx0(:,:,:,k)=a*Z*costh./R3;
    By0(:,:,:,k)=a*Z*sinth./R3;
    Bz0(:,:,:,k)=a*(a-X*costh-Y*sinth)./R3;
end
Bx=pi/40*trapz(Bx0,4);
By=pi/40*trapz(By0,4);
Bz=pi/40*trapz(Bz0,4);

subplot(1,2,2)
v=[-0.2,-0.1,0,0.1,0.2];
[Vx,Vy,Vz]=meshgrid(v,v,0);
plot3(Vx(:),Vy(:),Vz(:),'r')
streamline(X,Y,Z,Bx,By,Bz,Vx,Vy,Vz,[0.01,2000]);
hold on;
axis([-0.5,0.5,-0.5,0.5,-0.5,0.5]);
view(-23,26);
box on;
title('磁场的三维图','fontsize',15);
t=0:pi/100:2*pi;
plot(a*exp(i*t),'r-','LineWidth',3);
hold off;
pause(3)
view(-44,-8)
pause(3)
view(-44,90)