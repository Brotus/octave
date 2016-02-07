% Komplexität von compute_newton_poly:
% Der Aufwand beträgt \sum_(i=1)^(m-1) m - i = m*(m-1)/2 
% also O(n^2). 

% Initialisierung der Ausgangsdaten
xi1=0;xi2=0:1;xi3=0:2;
yi1=1;yi2=1:2;yi3=[1,2,1];

% Ergebnisse des Algorithmus
[c1,x1]=compute_newton_poly(xi1,yi1);
[c2,x2]=compute_newton_poly(xi2,yi2);
[c3,x3]=compute_newton_poly(xi3,yi3);

% Ergebnisse von Hand
ci1H=1;
ci2H=[1,1];
ci3H=[1,1,-1];

% Test
true (c1==ci1H) & true (c2==ci2H) & true (c3==ci3H)