f = @(x) cos(2*pi*x);

% Aufgabe (a)
m = 20;

[x,y] = generateData(m,f);
LSG = zeros(7);
for n=0:6
  [A,b]=leastSquareSystem(x,y,n);
  n
  lsg=A.'*A\A.'*b
  LSG(1:n+1,n+1)=LSG(1:n+1,n+1)+lsg;
end

% Aufgabe (b)
% "feineres Gitter"
g = 0:1/50:1;
% Polynome
p0 = @(x) LSG(1,1);
p1 = @(x) LSG(1,2) + x * LSG(2,2);
p2 = @(x) LSG(1,3) + x * LSG(2,3) + x.^2 * LSG(3,3);
p3 = @(x) LSG(1,4) + x * LSG(2,4) + x.^2 * LSG(3,4) + x.^3 * LSG(4,4);
p4 = @(x) LSG(1,5) + x * LSG(2,5) + x.^2 * LSG(3,5) + x.^3 * LSG(4,5) + x.^4 * LSG(5,5);
p5 = @(x) LSG(1,6) + x * LSG(2,6) + x.^2 * LSG(3,6) + x.^3 * LSG(4,6) + x.^4 * LSG(5,6) + x.^5 * LSG(6,6);
p6 = @(x) LSG(1,7) + x * LSG(2,7) + x.^2 * LSG(3,7) + x.^3 * LSG(4,7) + x.^4 * LSG(5,7) + x.^5 * LSG(6,7) + x.^6 * LSG(7,7);
% Plot
plot1 = subplot(1,2,1);
plot(plot1,
g,f(g),'b',
g,p6(g),'r--',
g,p5(g),'k--',
g,p4(g),'m--',
g,p3(g),'c--',
g,p2(g),'g--',
g,p1(g),'b--',
g,p0(g),'r')
title(plot1,'Aufgabe (b)');
legend(plot1,'f', 'p6', 'p5', 'p4', 'p3', 'p2', 'p1', 'p0', "Location", 'northwest');

% Aufgabe (c)
n = [0:6];
e = zeros(1,7);
for i=1:m
  s = [abs(f(x(i))-p0(x(i)))^2, abs(f(x(i))-p1(x(i)))^2, abs(f(x(i))-p2(x(i)))^2, abs(f(x(i))-p3(x(i)))^2, abs(f(x(i))-p4(x(i)))^2, abs(f(x(i))-p5(x(i)))^2, abs(f(x(i))-p6(x(i)))^2];
  e = e + s;
end
e = 1/m * e;
% Plot
plot2 = subplot(1,2,2);
semilogy(plot2,n,e)
title(plot2,'Aufgabe (c)');
xlabel(plot2,'n')
ylabel(plot2,'e')