clc
f=@(x) sin(pi*x);

% Teilaufgabe a

s00=piecewiseConstantApproximation(linspace(0,1,1),f);
s01=piecewiseConstantApproximation(linspace(0,1,2),f);
s02=piecewiseConstantApproximation(linspace(0,1,4),f);
s03=piecewiseConstantApproximation(linspace(0,1,8),f);
s04=piecewiseConstantApproximation(linspace(0,1,16),f);
s05=piecewiseConstantApproximation(linspace(0,1,32),f);

% Teilaufgabe b

x=0:0.001:1;
plot(x,f(x),x,evalPP(s01,x),x,evalPP(s02,x),x,evalPP(s03,x),x,evalPP(s04,x),x,evalPP(s05,x));

