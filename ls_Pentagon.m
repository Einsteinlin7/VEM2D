function ls_Pentagon
%%% ���ڸ�����5����,�����������ǵõ�һ�������.
%%% by Einstein Lin in 2016.10.06
clear;
clc;
axis([-0.5 3.5 -0.5 4.5]);
grid on
x =[0 3 3 3/2 0 0;0 0 2 4 4 0];  %Ҫ���ӵĵ�����x,y;
[M,N] = size(x);
for i = 1:N-1;
    line([x(1,i),x(1,i+1)],[x(2,i),x(2,i+1)]);  %���ӽڵ�line([x1,x2],[y1,y2])
    hold on
end
hold on
line([x(1,1),x(1,N)],[x(2,1),x(2,N)]);  %��β�ڵ�����
text(-0.1,-0.1,'V_1');text(3.1,-0.1,'V_2');text(3.1,2.1,'V_3');
text(1.5,4.1,'V_4');text(-0.1,4.1,'V_5');text(19/14,38/21,'X_{K}^{*}');
title('A typical Pentagon K in 2D');
end