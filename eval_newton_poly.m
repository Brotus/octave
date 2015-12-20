function r = eval_newton_poly (ci,xi,x)
% Eingabe:  ci  = Newton-Koeffizienten [ci_0,...,ci_n]
%           xi  = Stützstellen         [xi_0,...,xi_{n-1}]
%           x   = Auswertungsstellen   [x_0,...,x_m]
% Ausgabe:  r   = Vektor der Werte des
%                 Interpolationspoly-
%                 noms an x            [r_1,...,r_m]
%
% Wirft keinen error, wenn die übergebenen Argumente nicht korrekt sind.
% ci darf nicht leer sein.
  m = length(x);
  r = linspace(ci(1),ci(1),m);
  for i = 1:m
    for j = 2:length(ci)
      a = c(j);
      for k = 2:j
        a = a * (x(i) - xi(k-1));
      endfor
      r(i) = r(i) + a;
    endfor
  endfor
endfunction

% Komplexität:
% Sei n die Länge von ci und m die Länge von x. Zählt man nur Multiplikationen und Divisionen,
% so beträgt die Komplexität in der Eingabe
% #(ops) = O(1)+m*n*(O(1)+O(n)+O(1)) = O(m*n^2).
