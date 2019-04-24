function tanchishe()
global CloseFlag;
global SnakeBd;
global KeyFlag;
global Slong;
global fdx;
global fdy;
global StartFlag;
StartFlag=1;
MoveSpeed=0.1;
KeyFlag=4;
CloseFlag=0;
h=figure('KeyPressFcn',@KeyPress,'Color','w');
axes('parent',h,'units','points','position',[180 50 500 500],'XLimMode','manual','XLim',[0 50],'YLimMode','manual','YLim',[0 50]);
H=uicontrol('parent',h,'style','text','units','normalized','position',[0.72 0.7 0.12 0.08],'string',0,'BackGroundColor',[0.5 0.5 0.5],'FontSize',25);
uicontrol('parent',h,'style','pushbutton','units','normalized','position',[0.72 0.5 0.12 0.08],'string','开始','FontSize',12,'BackGroundColor',[0.5 0.5 0.5],'callback',['global StartFlag;StartFlag=0;']);
uicontrol('parent',h,'style','pushbutton','units','normalized','position',[0.72 0.3 0.12 0.08],'string','停止','FontSize',12,'BackGroundColor',[0.5 0.5 0.5],'callback',['global CloseFlag;CloseFlag=1;']);

StartSnake();
while 1
    if (KeyFlag==1&&SnakeBd(Slong,2)==49)||(KeyFlag==2&&SnakeBd(Slong,2)==0)||(KeyFlag==3&&SnakeBd(Slong,1)==0)||(KeyFlag==4&&SnakeBd(Slong,1)==49)||(CloseFlag==1)||(KeyFlag==5)
        a=text(19,24,'GAME OVER!');
        set(a,'FontSize',20);
        break;
    end  
    if SnakeBd(Slong,:)==[fdx,fdy]
        Slong=Slong+1;
        set(H,'string',Slong-3);
        switch KeyFlag
            case 1
                SnakeBd(Slong,:)=[fdx,fdy+1];
            case 2
                SnakeBd(Slong,:)=[fdx,fdy-1];
            case 3
                SnakeBd(Slong,:)=[fdx-1,fdy];
            case 4
                SnakeBd(Slong,:)=[fdx+1,fdy];
        end
        food();
    else
    Move(KeyFlag,1);
    end
    pause(MoveSpeed);
    if Slong==13
        b=text(19,24,'PASSED');
        set(b,'FontSize',20);
        pause(2);
        MoveSpeed=MoveSpeed/2;
        cla;
        StartFlag=1;
        StartSnake();  
    end
    for i=1:Slong-1
        if SnakeBd(Slong,:)==SnakeBd(i,:)
            CloseFlag=1;
        end
    end
end



function StartSnake()%初始化
global SnakeBd;%蛇的身体矩阵，最长为20。
global Slong;%蛇的长度
global StartFlag;
SnakeBd=ones(20,2)*nan;
SnakeBd(1:3,:)=[1 1;2 1;3 1];
Slong=3;
hold on
line([0 50],[0 0]);
line([0 50],[50 50]);
line([0 0],[0 50]);
line([50 50],[0 50]);
food();
SnakeBody(SnakeBd,Slong);
while StartFlag
    pause(1);
end



function KeyPress(src,evnt)
global KeyFlag;
global CloseFlag;
global ReturnFlag;
switch evnt.Character
    case 'w'%上
        KeyFlag=1;
    case 's'%下
        KeyFlag=2;
    case 'a'%左
        KeyFlag=3;
    case 'd'%右
        KeyFlag=4;
    case 'c'%关闭
        CloseFlag=5;
    case 'r'%重新开始
       ReturnFlag=6;
end

function PlotUnit(x,y,c,MSize)%画最小单元，x,y代表左下角坐标，c代表颜色，MSize代表标记大小
Ux=x+0.5;
Uy=y+0.5;
plot(Ux,Uy,'Marker','.','Color',c,'MarkerSize',MSize);
axis([0 50 0 50]);
axis off;

function SnakeBody(SBd,Sl)%SBd为蛇身矩阵，Sl为蛇的长度
hold on
PlotUnit(SBd(1:Sl-1,1),SBd(1:Sl-1,2),'c',33);
PlotUnit(SBd(Sl,1),SBd(Sl,2),'m',40);
    
    
function food()
global fdx;
global fdy;
f=randint(1,2,[1 49]);
fdx=f(1);fdy=f(2);
PlotUnit(fdx,fdy,'g',45);




function Move(MoveDirection,MoveFlag)%蛇的移动，MoveFlag控制蛇是否移动
global SnakeBd;
global Slong;
if MoveFlag
    PlotUnit(SnakeBd(1,1),SnakeBd(1,2),'w',46);
    for i=1:Slong-1
        SnakeBd(i,:)=SnakeBd(i+1,:);
    end
    switch MoveDirection
        case 1
            SnakeBd(Slong,2)=SnakeBd(Slong,2)+1;
        case 2
             SnakeBd(Slong,2)=SnakeBd(Slong,2)-1;
        case 3
             SnakeBd(Slong,1)=SnakeBd(Slong,1)-1;
        case 4
             SnakeBd(Slong,1)=SnakeBd(Slong,1)+1;
    end
    SnakeBody(SnakeBd,Slong);
end
