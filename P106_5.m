% ��ҵ��
clear;clc;
syms a;syms b;syms c;
syms d;syms x;syms y;

X = [0.0,0.1,0.2,0.3,0.5,0.8,1.0];
Y = [1.0,0.41,0.50,0.61,0.91,2.02,2.46];
xx = 0:0.005:1;

%�����������
P1 = polyfit(X,Y,3);
Y1 = polyval(P1,xx);

%�Ĵ��������
P2 = polyfit(X,Y,4);
Y2 = polyval(P2,xx);

%�Զ�����ϣ�����������ϣ�
P3 = polyfit(X,Y,6);
Y3 = polyval(P3,xx);

%��ͼ
g1 = plot(X,Y);
set(g1,'Linestyle','*','color','m','Linewidth',1.5);
hold on;
g2 = plot(xx,Y1);
set(g2,'Linestyle','-','color','b','Linewidth',1.5);
hold on;
g3= plot(xx,Y2);
set(g3,'Linestyle','-','color','r','Linewidth',1.5);
hold on;
g4 = plot(xx,Y3);
set(g4,'Linestyle','-','color','g','Linewidth',1.5);
l = legend([g1,g2,g3,g4],'���ݵ�','�����������','�Ĵ��������','�����������');
set(l,'Location','Best');

%����
%�����������Ч�������κ��Ĵκõö�




