clc
% Teilaufgabe a

s0.x=[0:2]; s0.a=[0;1];
% s_1(x)=0
% s_2(x)=1

s1.x=[0:2]; s1.a=[0,1;1,-1];
% s_1(x)=1
% s_2(x)=-1+1(x-1)=x-2

% Teilaufgabe b

x=0:0.01:2;
y1correct=[linspace(0,0,100)';linspace(1,1,101)'];
y1=evalPP(s0,x)';
norm(y1-y1correct);

y2correct=[linspace(0,0.99,100)';[1:0.01:2]'];
y2=evalPP(s1,x)';
norm(y2-y2correct);

% Teilaufgabe c

pp1=mkpp(s0.x,s0.a);
pp2=mkpp(s1.x,s1.a);
y1pp=ppval(pp1,x)';
y2pp=ppval(pp2,x)';

norm(y1-y1pp)
norm(y2-y2pp)

% Teilaufgabe d

sd=differentiatePP(s1)
% [0;1] ist korrekt

