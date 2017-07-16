function ls_PolygonDecomposition
%%% A Decomposition of Polygon K.
%%% Einstein Lin in 2016.10.09
clear;
clc;
figure
axis([0.9 5.1 0.9 5.3]);
box on
x =[3 5 5 3 1 1 3;1 2 4.2 5.2 4.2 2 1];  %要连接的点坐标 x;y
[n,m] = size(x);
for i = 1:m-1;
    line([x(1,i),x(1,i+1)],[x(2,i),x(2,i+1)]);  %连接节点line([x1,x2],[y1,y2])
    hold on
end
hold on

y = [2.8 2.6 4 2.8;3.8 2.8 3.2 3.8];
[a,b] = size(y);
for j = 1:b-1;
    line([y(1,j),y(1,j+1)],[y(2,j),y(2,j+1)],'linestyle','-','color','m');  
    hold on
end
hold on

line([x(1,1),y(1,2)],[x(2,1),y(2,2)],'linestyle','-','color','m');
line([x(1,2),y(1,2)],[x(2,2),y(2,2)],'linestyle','-','color','m');
line([x(1,2),y(1,3)],[x(2,2),y(2,3)],'linestyle','-','color','m');
line([x(1,3),y(1,3)],[x(2,3),y(2,3)],'linestyle','-','color','m');
line([x(1,4),y(1,3)],[x(2,4),y(2,3)],'linestyle','-','color','m');
line([x(1,4),y(1,1)],[x(2,4),y(2,1)],'linestyle','-','color','m');
line([x(1,5),y(1,1)],[x(2,5),y(2,1)],'linestyle','-','color','m');
line([x(1,5),y(1,2)],[x(2,5),y(2,2)],'linestyle','-','color','m');
line([x(1,6),y(1,2)],[x(2,6),y(2,2)],'linestyle','-','color','m');

text(3.4,1.8,'\tau^{*}');text(1.8,4.75,'e_i');text(4.5,1.3,'K');
z = [3.5 3.7 3.3 2.3 2.35 2.05;2 2.7 3.2 3.5 4.3 4.74];
[p,q] = size(z);
for k = 1:q-1;
    line([z(1,k),z(1,k+1)],[z(2,k),z(2,k+1)],'linestyle','--','marker','o','color','r');  
    hold on
end
hold on
%set(gca,'looseInset');
set(gca,'looseInset',[0 0 0 0]);
%axis off
%title('A typical Polygon K in 2D');
end