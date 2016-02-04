% Teilaufgabe (a)

% Ausgangsdaten definieren
f=@(x) exp(x);
n=1; m = 10; k = 0:10; h = 2.^-k'; j = k.+1;
x = zeros(m+1,n+1);
i = 0:n;

% x enthaelt in der j-ten zeile die Stuetzstellen zu h(j)
for l = j
  x(l,:) = i.*h(l);
endfor
x

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
  % die Newton Koeffizienten berechnen
  [ci,xi] = compute_newton_poly(x(l,:),y(l,:));
  % die Approximierten Werte beim Gitter
  fGA = eval_newton_poly(ci,xi,G);
  % der maximale Fehler
  e_h(l) = norm(fG-fGA, inf);
endfor

% Teilaufgabe (c)
% Die Tabelle tab enthält in der ersten Spalte h, in der zweiten die Fehler e_h und in der dritten eoc.
% Der Eintrag - 1 bedeutet, dass dort keine eoc berechnet werden kann.

% Fuer den plot aus (e) gibt es eine grosse Tabelle Tab

tab = [h e_h j'];
tab(1,3) = -1;
for l = 2:(m+1)
  tab(l,3) = log(tab(l,2)/tab(l-1,2))/log(tab(l,1)/tab(l-1,1));
endfor
tab
Tab = tab;

% Teilaufgabe (d)

for p = 2:5
  % setup
  n = p
  i = 0:n;
  x = zeros(m+1, n+1);
  for l = j
    x(l,:) = i.*h(l);
  endfor
  y=f(x);
  % Fehlerberechnung
  e_h = j';
  for l = j;
    G = 0:h(l)/10:n*h(l);
    fG = f(G);
	[ci,xi] = compute_newton_poly(x(l,:),y(l,:));
    fGA = eval_newton_poly(ci,xi,G);
    e_h(l) = norm(fG-fGA, inf);
  endfor
  % tabellarische Darstellung
  tab = [h e_h j'];
  tab(1,3) = -1;
  for l = 2:(m+1)
    tab(l,3) = log(tab(l,2)/tab(l-1,2))/log(tab(l,1)/tab(l-1,1));
  endfor
  Tab = [Tab tab];
  tab
endfor

% Interpretation:
% Wenn die Funktion mit hoeheren Grades approximiert wird, so ist diese schneller.
% Bei n = 5 unterschreited der Fehler 1e-15, sodass die Angezeigte eoc nicht mehr verlässlich ist.

% Teilaufgabe (e)
% Fuer n = 5 wird e(h,n) nicht geplottet, da es nicht mehr korrekt ist (siehe Interpretation)
title("h vs e(h,n)");
xlabel("h");
ylabel("e(h,n)");
loglog(h,Tab(:,2),";n=1;",h,Tab(:,5),";n=2;",h,Tab(:,8),";n=3;",h,Tab(:,11),";n=4;")

