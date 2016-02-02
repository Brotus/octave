clc
clear

f=@(x) sin(pi*x);

% Teilaufgabe a

s10=piecewiseLinearInterpolation(linspace(0,1,1),f);
s11=piecewiseLinearInterpolation(linspace(0,1,2),f);
s12=piecewiseLinearInterpolation(linspace(0,1,4),f);
s13=piecewiseLinearInterpolation(linspace(0,1,8),f);
s14=piecewiseLinearInterpolation(linspace(0,1,16),f);
s15=piecewiseLinearInterpolation(linspace(0,1,32),f);

% Teilaufgabe b

%xi=linspace(0,1,1);
%pp=interp1(xi,f(xi),'linear','pp');
%[x,a]=unmkpp(pp);

xi=linspace(0,1,2);
pp=interp1(xi,f(xi),'linear','pp');
[x,a]=unmkpp(pp);
norm(a-s11.a)

xi=linspace(0,1,4);
pp=interp1(xi,f(xi),'linear','pp');
[x,a]=unmkpp(pp);
norm(a-s12.a)

xi=linspace(0,1,8);
pp=interp1(xi,f(xi),'linear','pp');
[x,a]=unmkpp(pp);
norm(a-s13.a)

xi=linspace(0,1,16);
pp=interp1(xi,f(xi),'linear','pp');
[x,a]=unmkpp(pp);
norm(a-s14.a)

xi=linspace(0,1,32);
pp=interp1(xi,f(xi),'linear','pp');
[x,a]=unmkpp(pp);
norm(a-s15.a)

% Teilaufgabe c

x=0:0.001:1;
plot(x,f(x),x,evalPP(s11,x),x,evalPP(s12,x),x,evalPP(s13,x),x,evalPP(s14,x),x,evalPP(s15,x));
