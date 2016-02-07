% Teilaufgabe (a)

% Ausgangsdaten definieren
f=@(x) exp(x);
n=1; m = 10; k = 0:10; h = 2.^-k'; j = 1:11;
x = zeros(m+1,n+1);
i = 0:n;

% x enthaelt in der j-ten zeile die Stuetzstellen zu h(j)
for l = j
  x(l,:) = i.*h(l);
end
disp('Stuetzstellen:')
disp(x)

% Funktionswerte berechnen
y=f(x);

% Die Interpolationspolynome zu den Stuetzstellen xi haben die Newton-Koeffizienten ci.
for l = j
  [ci,xi] = compute_newton_poly(x(l,:),y(l,:));
end

% Teilaufgabe (b)

% e_h enthaelt in i-ten Eintrag eine Naeherung fuer den Interpolationsfehler, wenn f mit h(i) angenaehert wird
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
end

% Teilaufgabe (c)
% Die Tabelle tab enthält in der ersten Spalte h, in der zweiten die Fehler e_h und in der dritten eoc.
% Der Eintrag - 1 bedeutet, dass dort keine eoc berechnet werden kann.

% Fuer den plot aus (e) gibt es eine grosse Tabelle Tab

tab = [h e_h j'];
tab(1,3) = -1;
for l = 2:(m+1)
  tab(l,3) = log(tab(l,2)/tab(l-1,2))/log(tab(l,1)/tab(l-1,1));
end
disp('n=1')
disp(tab)
Tab = tab;

% Teilaufgabe (d)

for p = 2:5
  % setup
  n = p;
  i = 0:n;
  x = zeros(m+1, n+1);
  for l = j
    x(l,:) = i.*h(l);
  end
  y=f(x);
  % Fehlerberechnung
  e_h = j';
  for l = j;
    G = 0:h(l)/10:n*h(l);
    fG = f(G);
	[ci,xi] = compute_newton_poly(x(l,:),y(l,:));
    fGA = eval_newton_poly(ci,xi,G);
    e_h(l) = norm(fG-fGA, inf);
  end
  % tabellarische Darstellung
  tab = [h e_h j'];
  tab(1,3) = -1;
  for l = 2:(m+1)
    tab(l,3) = log(tab(l,2)/tab(l-1,2))/log(tab(l,1)/tab(l-1,1));
  end
  Tab = [Tab tab];
  disp(['n = ',num2str(n)])
  disp(tab)
end

% Interpretation:
% Wenn die Funktion mit hoeheren Grades approximiert wird, so ist diese schneller.
% Bei n = 5 unterschreited der Fehler 1e-15, sodass die angezeigte eoc nicht mehr verlässlich ist.

% Teilaufgabe (e)

% Octave:
%title("h vs e(h,n)");
%xlabel("h");
%ylabel("e(h,n)");
%loglog(h,Tab(:,2),";n=1;",h,Tab(:,5),";n=2;",h,Tab(:,8),";n=3;",h,Tab(:,11),";n=4;",h,Tab(:,14),";n=5;")


loglog(h,Tab(:,2),'-b',h,Tab(:,5),'-g',h,Tab(:,8),'-r',h,Tab(:,11),'-c',h,Tab(:,14),'-m')
title('h vs e(h,n)');
xlabel('h');
ylabel('e(h,n)');
legend('n=1','n=2','n=3','n=4','n=5','Location','northwest');
