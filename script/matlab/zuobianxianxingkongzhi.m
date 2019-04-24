clc
clear
t = 0:pi/10:2*pi;
[X,Y,Z] = cylinder(4*cos(t)); 
subplot(2,2,1); mesh(X); title('X'); 
subplot(2,2,2); mesh(Y); title('Y');
subplot(2,2,3); mesh(Z); title('Z');
subplot(2,2,4); mesh(X,Y,Z);title('X,Y,Z');
hold on
t=0:0.001:1;
y1=sin(10*t);
y2=sin(15*t);
y3=sin(20*t);
y4=sin(25*t);
subplot(2,2,1)
plot(t,y1,'--r*','linewidth',2,'markersize',5)
text(.5,.5,{'subplot(2,2,1)'},...
    'FontSize',14,'HorizontalAlignment','center')
subplot(2,2,2)
plot(t,y2,'--b*','linewidth',2,'markersize',5)
text(.5,.5,'subplot(2,2,2)',...
    'fontsize',14,'horizontalalignment','left')
subplot(2,2,3)
plot(t,y2,'--b*','linewidth',2,'markersize',5)
text(.5,.5,{'subplot(2,2,3)'},...
    'FontSize',14,'HorizontalAlignment','center')
subplot(2,2,4)
plot(t,y2,'--r*','linewidth',2,'markersize',5)
text(.5,.5,{'subplot(2,2,4)'},...
    'FontSize',14,'HorizontalAlignment','center')