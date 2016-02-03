% initializing
f=@(x) exp(x);
a=0;
b=[2.^-[0:5]]

% Rechtsseitige Rechtecksregel
ti = 0; wi = 1;
for i=1:6
quadrature (f,a,b(i),ti,wi);
end

% Simppson
ti = [0 0.5 1]; wi = [1/6 4/6 1/6];
for i=1:6
quadrature (f,a,b(i),ti,wi);
end