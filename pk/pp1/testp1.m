% Initialisiere Werte gemaess Aufgabenstellung:
x = [0:0.1:5];

%a
cia = [1];
xia=[0];
%b
cib=[1,2];
xib=[0,1];
%c
cic=[1,2,4];
xic=[0,1,2];

% Die enstprechenden Polynome
pa=@(z) cia(1);
pb=@(z) cib(1)+cib(2).*(z-xib(1));
pc=@(z) cic(1)+cic(2).*(z-xic(1))+cic(3).*(z-xic(1)).*(z-xic(2));

% Auswertung der Polynome
%[x1, y1] = fplot(pa, [1,5]);
%[x2, y2] = fplot(pb, [1,5]);
%[x3, y3] = fplot(pc, [1,5]);

% Die ensprechenden resultate von eval_newton_poly
ra=eval_newton_poly(cia,xia,x);
rb=eval_newton_poly(cib,xib,x);
rc=eval_newton_poly(cic,xic,x);

% Ausgabe der Graphen
figure
plot1 = subplot(3,2,1);
plot2 = subplot(3,2,2);
plot3 = subplot(3,2,3);
plot4 = subplot(3,2,4);
plot5 = subplot(3,2,5);
plot6 = subplot(3,2,6);

plot(plot1, x, ra, "r")
plot(plot3, x, rb, "r")
plot(plot5, x, rc, "r")
plot(plot2, x, pa(x), "b")
plot(plot4, x, pb(x), "b")
plot(plot6, x, pc(x), "b")
title(plot1, "eval\\_newton\\_poly \n a)")
title(plot2, "actual polynom p(x) \n")
title(plot3, "b)")
title(plot5, "c)")

% Komplexitaet von eval_newton_poly:
% Sei n = die Anzahl an Koeffizienten
% Die Schleife wird n-1  mal durchlaufen.
% Bei jedem Schritt wird eine Subtraktion, eine Multiplikation und eine Addition
% pro Auswertungsstelle berechnet. Zusätzlich wird die Anzahl der Koeffizienten
% in konstanter Laufzeit berechnet.
% Sei m = Anzahl der Auswertungsstellen, dann ist 
% #(ops) = O(1)+m*n*(O(1)) = O(m*n).