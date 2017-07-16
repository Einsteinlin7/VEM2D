function ls_StarDomain1
%%% plot a Star-shaped domain.
%%% by Einstein Lin in 2016.10.09.
clear;
clc;
figure; 
axis([-3 3 -0.5 5.5]);
box on
x =[-2.5 -1 0 1 2.5 2.5 -2.5 -2.5;0 0 2 0 0 5 5 0];  %要连接的点坐标x,y;
[M,N] = size(x);
for i = 1:N-1;
    line([x(1,i),x(1,i+1)],[x(2,i),x(2,i+1)]);  %连接节点line([x1,x2],[y1,y2])
    hold on
end
hold on
line([x(1,1),x(1,N)],[x(2,1),x(2,N)]);  %首尾节点相连

%%%plot circle
x1 = 0; y1 = 3.2;
x2 = 1.8; y2 = 2.4;
r = 0.6;
theta = 0:pi/50:2*pi;
X1 = x1 + r*cos(theta); Y1 = y1 + r*sin(theta);
X2 = x2 + r*cos(theta); Y2 = y2 + r*sin(theta);
plot(X1,Y1,'-',x1,y1); plot(X2,Y2,'-',x2,y2);

text(0,3.2,'B_1');text(1.8,2.4,'B_2');text(-2,4.5,'\Omega');
%title('Domain star-shaped with respect to B_1 but not B_2');
axis off
end