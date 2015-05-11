%P106_5_new.m
%����ʹ��nlinfit����������ߵ���ֵ��

clear; clc; format long;
X = [0.0,0.1,0.2,0.3,0.5,0.8,1.0];
Y = [1.0,0.41,0.50,0.61,0.91,2.02,2.46];

%��ϻ�����ʹ��f(x)=ax-b/(x^0.5-c)-d,����a,b,c,dΪ���������
F=inline('beta(1)*x-beta(2)./(x.^0.5-beta(3))-beta(4)','beta','x');
beta = nlinfit(X,Y,F,[0 0 0 0])
a = beta(1);
b = beta(2);
c = beta(3);
d = beta(4);

xx = 0:0.001:1;
yy = a.*xx-b./(xx.^0.5-c)-d;
g1 = plot(xx,yy);
set(g1,'LineStyle','-','color','g','Linewidth',1);
hold on;

%Ϊ�����Զ��庯����Ч�����Ƚ�
%����ʵ����һ��nlinfit������ζ���ʽ��С�������
G = inline('beta(1)+beta(2).*x+beta(3).*x.^2+beta(4).*x.^3','beta','x');
beta = nlinfit(X,Y,G,[0 0 0 0])
a = beta(1);
b = beta(2);
c = beta(3);
d = beta(4);

xx = 0:0.001:1;
yy = a+b.*xx+c.*xx.^2+d.*xx.^3;
g2 = plot(xx,yy);
set(g2,'LineStyle','-','color','m','Linewidth',1);

g3 = plot(X,Y);
set(g3,'LineStyle','o','color','b','Linewidth',1);

l = legend([g1,g2,g3],'�Զ��庯�����','�������','���ݵ�');
set(l,'Location','best');




