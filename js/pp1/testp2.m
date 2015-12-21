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
(c1==ci1H)&&(c2==ci2H)&&(c3==ci3H)