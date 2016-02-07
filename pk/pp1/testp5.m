% Initialisiere Werte gemaess Aufgabenstellung:
x = [0:0.1:5];

%a
cia = [1];
xia=[0];
%b
cib=[1,2];
xib=[0,1];
%c
cic=[1,3,4];
xic=[0,1,2];

% Die enstprechenden Polynome
pa=@(z) cia(1);
pb=@(z) cib(1)+cib(2).*(z-xib(1));
pc=@(z) cic(1)+cic(2).*(z-xic(1))+cic(3).*(z-xic(1)).*(z-xic(2));

% Die ensprechenden Resultate von eval_newton_poly
ra=eval_newton_poly(cia,xia,x);
rb=eval_newton_poly(cib,xib,x);
rc=eval_newton_poly(cic,xic,x);

% Die entsprechenden Resultate von eval_monom_poly
rma=eval_monom_poly(newton_to_monomial(cia,xia),x);
rmb=eval_monom_poly(newton_to_monomial(cib,xib),x);
rmc=eval_monom_poly(newton_to_monomial(cic,xic),x);

% Ausgabe der Graphen
figure
plot1 = subplot(1,3,1);
plot2 = subplot(1,3,2);
plot3 = subplot(1,3,3);

plot(plot1, x, ra, '.-r', x, rb, 'g', x, rc, 'b')
plot(plot2, x, pa(x), '.-r', x, pb(x), 'g', x, pc(x), 'b')
plot(plot3, x, rma, '.-r', x, rmb, 'g', x, rmc, 'b')
title(plot1, 'eval\_newton\_poly')
title(plot2, 'actual polynom p(x)')
title(plot3, 'eval\_monom\_poly')

% Komplexität
% Sei m die Anzahl der auszuwertenden Stellen und n die Anzahl der Koeffizieten
% bzw. die Dimension von p. Dann werden pro Stützstelle und pro Koeffizieten
% eine Multiplikation und (außer während der Initialisierung) eine Addition 
% durchgeführt, also 
% #(ops) = m*((n-1)+n) = O(n*m);