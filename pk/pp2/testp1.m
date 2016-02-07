% initializing
f=@(x) exp(x);
a=0;
b=[2.^-[0:5]];

% Rechtsseitige Rechtecksregel
fprintf("Linksseit \n")
ti = 0; wi = 1;
for i=1:6;
quadrature (f,a,b(i),ti,wi);
end

% Trapezregel
fprintf("Trapezregel \n")
ti = [0,1]; wi =[1/2 1/2];
for i=1:6;
quadrature (f,a,b(i),ti,wi);
end

% Simpson
fprintf("Simpson \n")
ti = [0 0.5 1]; wi = [1/6 4/6 1/6];
for i=1:6;
quadrature (f,a,b(i),ti,wi);
end