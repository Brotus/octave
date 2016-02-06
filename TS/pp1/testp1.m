% x aus der Aufgabenstellung
x=0:0.1:5;
% ci und xi zu Aufgabenteil (a)
cia=[1];
xia=[0];
% ci und xi zu Aufgabenteil (b)
cib=[1,2];
xib=[0,1];
% ci und xi zu Aufgabenteil (c)
cic=[1,3,4];
xic=[0,1,2];
% plots
figure % neue Figur anlegen
plot1 = subplot(1,2,1);
plot2 = subplot(1,2,2);
plot(plot1, x,eval_newton_poly(cia,xia,x),'r', x,eval_newton_poly(cib,xib,x),'b', x,eval_newton_poly(cic,xic,x),'g')
title(plot1,'eval newton poly')
plot(plot2, x,1,'r', x,1+2*(x-0),'b', x,1+3*(x-0)+4*(x.^2-x),'g')
title(plot2,'p(x)')

% Komplexität:	#(ops)=1/2*m*(n^2-n)
%				        m  ... Länge von x
%				        n  ... Länge von xi und ci