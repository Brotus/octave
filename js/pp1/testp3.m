% Teilaufgabe (a)

% Ausgangsdaten definieren
f=@(x) exp(x);
n=1; k = 0:10; h = 2.^-k'; j = k.+1;
x = zeros(m+1,n+1);
i = 0:n;

% x enthaelt in der j-ten zeile die Stuetzstellen zu h(j)
for l = j
  x(l,:) = i.*h(l);
endfor

% Funktionswerte berechnen
y=f(x);

% Die Interpolationspolynome zu den Stuetzstellen xi haben die Newton-Koeffizienten ci.
for l = j
  [ci,xi] = compute_newton_poly(x(l,:),y(l,:));
endfor

% Teilaufgabe (b)

% e_h enthält in i-ten Eintrag eine Naeherung für den Interpolationsfehler, wenn f mit h(i) angenaehert wird
e_h = j';
for l = j;
  % das Gitter
  G = 0:h(l)/10:n*h(l);
  % die Funktionswerte beim Gitter
  fG = f(G);
  % die Approximierten Werte beim Gitter
  fGA = eval_newton_poly(ci,xi,G);
  % der maximale Fehler
  e_h(l) = norm(fG-fGA, inf);
endfor
e_h