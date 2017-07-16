function ls_Polygon6
%%% 对于给定的6个点,依次连接它们得到一个六边形.
%%% Einstein Lin in 2016.09.26
clear;
clc;
axis([1 5 0 6]);
box on
x =[3 4 4 3 2 2 3;1 2 4 5 4 2 1];  %要连接的点坐标 x;y
[n,m] = size(x);
for i = 1:m-1;
    line([x(1,i),x(1,i+1)],[x(2,i),x(2,i+1)]);  %连接节点line([x1,x2],[y1,y2])
    hold on
end
hold on
line([x(1,1),x(1,m)],[x(2,1),x(2,m)]);  %首尾节点相连
text(3,0.9,'p1=p7');text(4.1,2,'p2');text(4.1,4,'p3');
text(3,5.1,'p4');text(1.85,4,'p5');text(1.85,2,'p6');
text(3.5,1.7,'e1');text(3.85,3,'e2');text(3.5,4.3,'e3');
text(2.5,4.4,'e4');text(2,3,'e5');text(2.5,1.6,'e6');
text(3,3,'K');
title('A typical Polygon K in 2D');
end