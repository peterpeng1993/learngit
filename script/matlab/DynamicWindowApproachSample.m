% -------------------------------------------------------------------------
%
% File : DynamicWindowApproachSample.m
%
% Discription : Mobile Robot Motion Planning with Dynamic Window Approach
%
% Environment : Matlab
%
% Author : Atsushi Sakai
%
% Copyright (c): 2014 Atsushi Sakai
%
% License : Modified BSD Software License Agreement
% -------------------------------------------------------------------------
 
function [] = DynamicWindowApproachSample()
 
close all;
clear all;
 
disp('Dynamic Window Approach sample program start!!')
 
x=[0 0 pi/2 0 0]';% �����˵ĳ���״̬[x(m),y(m),yaw(Rad),v(m/s),w(rad/s)]
goal=[10,10];% Ŀ���λ�� [x(m),y(m)]
% �ϰ���λ���б� [x(m) y(m)]

%��һ�ֵ�ͼ
obstacle=[2 2 
          2.5 2
          3 2
          3.5 2
          4 2
          4.5 2
          5 2
          5.5 2
          6 2
          6.5 2
          7 2
          7 2.5
          7 3
          7 3.5
          7 4
          7 4.5
          7 5
          7.5 2
          8 2
          
          4 7 
          4 7.5
          4 8
          2 8
          2.5 8
          3 8
          3.5 8
          4.5 8
          5 8
          5.5 8
          6 8
          6.5 8
          7 8
          7.5 8
          8 8];
% %�ڶ��ֵ�ͼ
% obstacle=[-1 2 
%           -0.5 2
%           0 2
%           0 2.5
%           0 3
%           0 3.5
%           0 4
%           0 4.5
%           0 5
%           0 5.5
%           0 6
%           0 6.5
%           0 7
%           0.5 7
%           1 7
%           1.5 7
%           2 7
%           2.5 7
%           3 7
%           3.5 7
%           4 7
%           4 7.5
%           4 8
%           4.5 8
%           5 8
%           5.5 8
%           6 8
%           7 8
%           8 8
%           8 8.5
%           8 9
%           8 9.5
%           8 10
%           8.5 10
%           9 10
%           
%           2 -0.5
%           2 0
%           2 0.5
%           2 1
%           2 1.5
%           2 2
%           2 2.5
%           2 3
%           2 3.5
%           2 4
%           2 4.5
%           2 5
%           2 5.5
%           2.5 5.5
%           3 5.5
%           3.5 5.5
%           4 5.5 
%           4.5 5.5
%           5 5.5
%           5.5 5.5
%           6 5.5
%           6.5 5.5
%           7 5.5
%           7.5 5.5
%           8 5.5
%           8.5 5.5
%           9 5.5
%           9.5 5.5
%           10 5.5
%           10.5 5.5
%           11 5.5
%           11 6
%           11 6.5
%           11 7
%           11 7.5
%           11 8 
%           11 8.5
%           11 9
%           11 9.5
%           11 10
%           11 10.5
%           11 11
%           ];
      
% %�����ֵ�ͼ
% obstacle=[
%     
%           -1 -0.5
%           -0.5 -0.5
%           0 -0.5
%           0.5 -0.5
%           1 -0.5
%           1.5 -0.5
%           -0.5 1
%           0 1
%           0.5 1
%           -1 2 
%           -0.5 2
%           0 2
%           0 2.5
%           0 3
%           0 3.5
%           0 4
%           0 4.5
%           0 5
%           0 5.5
%           0 6
%           0 6.5
%           0 7
%           0.5 7
%           1 7
%           1.5 7
%           2 7
%           2.5 7
%           3 7
%           3.5 7
%           4 7
%           4 7.5
%           4 8
%           4.5 8
%           5 8
%           5.5 8
%           6 8
%           7 8
%           8 8
%           8 8.5
%           8 9
%           8 9.5
%           8 10
%           8.5 10
%           9 10
%           
%           2 -0.5
%           2 0
%           2 0.5
%           2 1
%           2 1.5
%           2 2
%           2 2.5
%           2 3
%           2 3.5
%           2 4
%           2 4.5
%           2 5
%           2 5.5
%           2.5 5.5
%           3 5.5
%           3.5 5.5
%           4 5.5 
%           4.5 5.5
%           5 5.5
%           5.5 5.5
%           6 5.5
%           6.5 5.5
%           7 5.5
%           7.5 5.5
%           8 5.5
%           8.5 5.5
%           9 5.5
%           9.5 5.5
%           10 5.5
%           10.5 5.5
%           11 5.5
%           11 6
%           11 6.5
%           11 7
%           11 7.5
%           11 8 
%           11 8.5
%           11 9
%           11 9.5
%           11 10
%           11 10.5
%           11 11
%           
%           9 9
%           9.5 9
%           9.8 9
%           ];
      
obstacleR=0.5;% ��ͻ�ж��õ��ϰ���뾶
global dt; dt=0.1;% ʱ��[s]
% �������˶�ѧģ��
% ����ٶ�m/s],�����ת�ٶ�[rad/s],���ٶ�[m/ss],��ת���ٶ�[rad/ss],
% �ٶȷֱ���[m/s],ת�ٷֱ���[rad/s]]
Kinematic=[1.0,toRadian(20.0),0.2,toRadian(50.0),0.01,toRadian(1)];
% ���ۺ������� [heading,dist,velocity,predictDT]
evalParam=[0.05,0.2,0.1,3.0];
area=[-1 11 -1 11];% ģ������Χ [xmin xmax ymin ymax]
% ģ��ʵ��Ľ��
result.x=[];
tic;
% movcount=0;
% Main loop
for i=1:5000
    % DWA��������
    [u,traj]=DynamicWindowApproach(x,Kinematic,goal,evalParam,obstacle,obstacleR);
    x=f(x,u);% �������ƶ�����һ��ʱ��
    
    % ģ�����ı���
    result.x=[result.x; x'];
    
    % �Ƿ񵽴�Ŀ�ĵ�
    if norm(x(1:2)-goal')<0.4
        disp('Arrive Goal!!');break;
    end
    
    %====Animation====
    hold off;
    ArrowLength=0.5;% 
    % ������
    quiver(x(1),x(2),ArrowLength*cos(x(3)),ArrowLength*sin(x(3)),'ok');hold on;
    plot(result.x(:,1),result.x(:,2),'-b');hold on;
    plot(goal(1),goal(2),'*r');hold on;
    plot(obstacle(:,1),obstacle(:,2),'*k');hold on;
    % ̽���켣
    if ~isempty(traj)
        for it=1:length(traj(:,1))/5
            ind=1+(it-1)*5;
            plot(traj(ind,:),traj(ind+1,:),'-g');hold on;
        end
    end
    axis(area);
    grid on;
    drawnow;
%     movcount=movcount+1;
%     mov(movcount) = getframe(gcf);% 
end
toc
% movie2avi(mov,'movie1.avi');
 
function [u,trajDB]=DynamicWindowApproach(x,model,goal,evalParam,ob,R)
% Dynamic Window [vmin,vmax,wmin,wmax]
Vr=CalcDynamicWindow(x,model);
% ���ۺ����ļ���
[evalDB,trajDB]=Evaluation(x,Vr,goal,ob,R,model,evalParam);
if isempty(evalDB)
    disp('no path to goal!!');
    u=[0;0];return;
end
% �����ۺ�������
evalDB=NormalizeEval(evalDB);
% �������ۺ����ļ���
feval=[];
for id=1:length(evalDB(:,1))
    feval=[feval;evalParam(1:3)*evalDB(id,3:5)'];
end
evalDB=[evalDB feval];
 
[maxv,ind]=max(feval);% �������ۺ���
u=evalDB(ind,1:2)';% 
function [evalDB,trajDB]=Evaluation(x,Vr,goal,ob,R,model,evalParam)
% 
evalDB=[];
trajDB=[];
for vt=Vr(1):model(5):Vr(2)
    for ot=Vr(3):model(6):Vr(4)
        % �켣�Ʋ�; �õ� xt: ��������ǰ�˶����Ԥ��λ��; traj: ��ǰʱ�� �� Ԥ��ʱ��֮��Ĺ켣
        [xt,traj]=GenerateTrajectory(x,vt,ot,evalParam(4),model);  %evalParam(4),ǰ��ģ��ʱ��;
        % �����ۺ����ļ���
        heading=CalcHeadingEval(xt,goal);
        dist=CalcDistEval(xt,ob,R);
        vel=abs(vt);
        % �ƶ�����ļ���
        stopDist=CalcBreakingDist(vel,model);
        if dist>stopDist % 
            evalDB=[evalDB;[vt ot heading dist vel]];
            trajDB=[trajDB;traj];
        end
    end
end
function EvalDB=NormalizeEval(EvalDB)
% ���ۺ�������
if sum(EvalDB(:,3))~=0
    EvalDB(:,3)=EvalDB(:,3)/sum(EvalDB(:,3));
end
if sum(EvalDB(:,4))~=0
    EvalDB(:,4)=EvalDB(:,4)/sum(EvalDB(:,4));
end
if sum(EvalDB(:,5))~=0
    EvalDB(:,5)=EvalDB(:,5)/sum(EvalDB(:,5));
end
function [x,traj]=GenerateTrajectory(x,vt,ot,evaldt,model)
% �켣���ɺ���
% evaldt��ǰ��ģ��ʱ��; vt��ot��ǰ�ٶȺͽ��ٶ�; 
global dt;
time=0;
u=[vt;ot];% ����ֵ
traj=x;% �����˹켣
while time<=evaldt
    time=time+dt;% ʱ�����
    x=f(x,u);% �˶�����
    traj=[traj x];
end
function stopDist=CalcBreakingDist(vel,model)
% �����˶�ѧģ�ͼ����ƶ�����,����ƶ����벢û�п�����ת�ٶȣ�����ȷ�ɣ�����
global dt;
stopDist=0;
while vel>0
    stopDist=stopDist+vel*dt;% �ƶ�����ļ���
    vel=vel-model(3)*dt;% 
end
function dist=CalcDistEval(x,ob,R)
% �ϰ���������ۺ���
dist=100;
for io=1:length(ob(:,1))
    disttmp=norm(ob(io,:)-x(1:2)')-R;%�p�X�̈ʒu�Ə�Q���Ƃ̃m�����덷���v�Z
    if dist>disttmp% ���ϰ�����С�ľ���
        dist=disttmp;
    end
end
 
% �ϰ�����������޶�һ�����ֵ��������趨��һ��һ���켣û���ϰ����̫ռ����
if dist>=2*R
    dist=2*R;
end
 
function heading=CalcHeadingEval(x,goal)
% heading�����ۺ�������
 
theta=toDegree(x(3));% �����˳���
goalTheta=toDegree(atan2(goal(2)-x(2),goal(1)-x(1)));% Ŀ���ķ�λ
 
if goalTheta>theta
    targetTheta=goalTheta-theta;% [deg]
else
    targetTheta=theta-goalTheta;% [deg]
end
 
heading=180-targetTheta;
 
function Vr=CalcDynamicWindow(x,model)
%
global dt;
% �����ٶȵ������С��Χ
Vs=[0 model(1) -model(2) model(2)];
 
% ���ݵ�ǰ�ٶ��Լ����ٶ����Ƽ���Ķ�̬����
Vd=[x(4)-model(3)*dt x(4)+model(3)*dt x(5)-model(4)*dt x(5)+model(4)*dt];
 
% ���յ�Dynamic Window
Vtmp=[Vs;Vd];
Vr=[max(Vtmp(:,1)) min(Vtmp(:,2)) max(Vtmp(:,3)) min(Vtmp(:,4))];
 
function x = f(x, u)
% Motion Model
% u = [vt; wt];��ǰʱ�̵��ٶȡ����ٶ�
global dt;
 
F = [1 0 0 0 0
     0 1 0 0 0
     0 0 1 0 0
     0 0 0 0 0
     0 0 0 0 0];
 
B = [dt*cos(x(3)) 0
    dt*sin(x(3)) 0
    0 dt
    1 0
    0 1];
 
x= F*x+B*u;
 
function radian = toRadian(degree)
% degree to radian
radian = degree/180*pi;
 
function degree = toDegree(radian)
% radian to degree
degree = radian/pi*180;
