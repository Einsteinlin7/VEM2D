
function ls_Diamond
%%% by Einstein Lin in 2016.10.11
clear;
clc;
axis([0.2 9.7 0 1]);
box on
x =[0.5 5 9.5 5 0.5;0.5 0.45 0.5 0.55 0.5];  %要连接的点坐标x,y;
[M,N] = size(x);
for i = 1:N-1;
    line([x(1,i),x(1,i+1)],[x(2,i),x(2,i+1)]);  %连接节点line([x1,x2],[y1,y2])
    hold on
end
hold on
line([x(1,1),x(1,N)],[x(2,1),x(2,N)]);  %首尾节点相连
text(0.45,0.5,'V_1');text(5,0.4,'V_2');
text(9.5,0.5,'V_3');text(5,0.6,'V_3');

%%%plot circle
x1 = 5; y1 = 0.5;
r = 0.05;
theta = 0:pi/100:2*pi;
X1 = x1 + r*cos(theta); Y1 = y1 + r*sin(theta);
plot(X1,Y1,'m--',x1,y1); 

set(gca,'looseInset',[0 0 0 0]);
%axis off
end