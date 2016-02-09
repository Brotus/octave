clc;
% Komplexitaet von eval_monom_poly:
% Ist n die Laenge von ai und m die von x und zaehlt man nur die Multiplikationen und Divisionen, so ist die Komplexität
% #(ops) = O(m*n)
% Das Horner-Schema für einen Wert arbeitet in O(n). Es wird m mal angewandt.

% Initialisierung der Ausgangsdaten
x = 0:0.1:5;
ci1=1;ci2=[1,2];ci3=[1,3,4];
xi1=0;xi2=[0,1];xi3=0:2;

% Speichern der Koeffizienten der Monom-Darstellung
ai1=newton_to_monomial(ci1,xi1);
ai2=newton_to_monomial(ci2,xi2);
ai3=newton_to_monomial(ci3,xi3);

% Speichern der Funktionswerte bei Auswertung in der Newton-Darstellung
y1n=eval_newton_poly(ci1,xi1,x);
y2n=eval_newton_poly(ci2,xi2,x);
y3n=eval_newton_poly(ci3,xi3,x);

% Speichern der Funktionswerte bei Auswertung in Monom-Darstellung
y1m=eval_monom_poly(ai1,x);
y2m=eval_monom_poly(ai2,x);
y3m=eval_monom_poly(ai3,x);

% Test, ob die Algorithmen hinreichend genau rechnen
disp('exact?');
disp(norm(y1n-y1m,inf)+norm(y2n-y2m,inf)+norm(y3n-y3m,inf) < 1e-13);

% Der Fehler ist kleiner als 10^(-13)

% Grafischer Vergleich
subplot(3,1,1)
plot(x,y1n,'-b',x,y1m,'or')
subplot(3,1,2)
plot(x,y2n,'-b',x,y2m,'or')
subplot(3,1,3)
plot(x,y3n,'-b',x,y3m,'or')

% Die Graphen sind gleich.
