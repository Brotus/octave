x = [0:0.1:5];

cia=[1];
xia=[0];

cib=[1,2];
xib=[0,1];

cic=[1,3,4];
xic=[0,1,2];

figure
plot1 = subplot(1,2,1);
plot2 = subplot(1,2,2);
plot(plot1, x, eval_newton_poly(cia,xia,x),'r', x, eval_newton_poly(cib,xib,x),'b', x, eval_newton_poly(cic,xic,x),'g')
title(plot1, 'eval_newton_poly')

plot(plot2, x, 1, 'r', x, 1+2*(x-0), 'b', x, 1+3*(x-0)+4*(x.^2-x), 'g')
title(plot2, 'p(x)')

% Komplexität des Algorithmus
% #(ops) = 1/2*m*(n^2-n)
% mit m = Länge von x
% und n = Länge von xi und ci 
	