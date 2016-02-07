% Initialisierung der Ausgangsdaten
ci1=[1];ci2=[1,2];ci3=[1,3,4];
xi1=[0];xi2=[0,1];xi3=0:2;

% Die von Hand berechneten Koeffizienten der Monom-Darstellung
a1H=1;
a2H=[1,2];
a3H=[1,-1,4];

% Die ai enthalten die mit dem Algorithmus berechneten Koeffizienten der Monom-Darstellung
a1=newton_to_monomial(ci1,xi1);
a2=newton_to_monomial(ci2,xi2);
a3=newton_to_monomial(ci3,xi3);

% Test
true(a1==a1H)&true(a2==a2H)&true(a3==a3H)