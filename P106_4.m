format long;
syms x;
f = exp(x);
phi = [x^0,x^1,x^2,x^3,x^4];
rho = [x^0,x^0,x^0,x^0,x^0];
interval = [0,1];
xx = linspace(0,1,1000);
y = exp(xx);

[B,P] = theBestSquareApproximation(f,phi,rho,interval)
figure('Name','�Ĵ����ƽ���ƽ�');
g1 = plot(xx,y,'b');
hold on;
yy = subs(P,xx);
div1 = abs(y-yy)
g2 = plot(xx,yy,':g');
l1 = legend([g1,g2],'ԭ��������','�Ĵ����ƽ���ƽ�����');
set(l1,'Location','NorthWest');

P = legendre(f,4)
figure('Name','���õ���������ʽ�ƽ�');
g1 = plot(xx,y,'b');
hold on;
yy = subs(P,xx);
div2 = abs(y-yy)
g2 = plot(xx,yy,':g');
l2 = legend([g1,g2],'ԭ��������','���õ���������ʽ�ƽ�����');
set(l2,'Location','NorthWest');

P = taylor(exp(x),'Order',5);
figure('Name','̩��չ���ƽ�');
g1 = plot(xx,y,'b');
hold on;
yy = subs(P,xx);
div3 = abs(y-yy);
g2 = plot(xx,yy,':g');
l3 = legend([g1,g2],'ԭ��������','̩��չ���ƽ�����');
set(l3,'Location','NorthWest');

figure('Name','ǰ������[0,1]�ϵ������ֲ�');
g1 = plot(xx,div1,'g');
hold on;
g2 = plot(xx,div2,'m');
l4 = legend([g1,g2],'��ͨ�������ƽ����','���õ���������ʽ�ƽ����');
set(l4,'Location','best');

figure('Name','������[0,0.3]�ϵ����ֲ�');
g1 = plot(xx,div1,'g');
hold on;
g2 = plot(xx,div2,'m');
hold on;
g3 = plot(xx,div3,'b');
l5 = legend([g1,g2,g3],'��ͨ�������ƽ����','���õ���������ʽ�ƽ����','̩��չ���ƽ����');
set(l5,'Location','best');
axis([0,0.3,0,0.0005]); 

figure('Name','������[0,1]�ϵ����ֲ�');
g1 = plot(xx,div1,'g');
hold on;
g2 = plot(xx,div2,'m');
hold on;
g3 = plot(xx,div3,'b');
l5 = legend([g1,g2,g3],'��ͨ�������ƽ����','���õ���������ʽ�ƽ����','̩��չ���ƽ����');
set(l5,'Location','best');