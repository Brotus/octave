% Eingabe:  ci  = Newton-Koeffizienten [ci_0,...,ci_n]
%           xi  = Stuetzstellen         [xi_0,...,xi_{n-1}]
%           x   = Auswertungsstellen   [x_0,...,x_m]
% Ausgabe:  r   = Vektor der Werte des
%                 Interpolationspoly-
%                 noms an x            [r_1,...,r_m]
%
% Wirft keinen error, wenn die uebergebenen Argumente nicht korrekt sind.
% ci darf nicht leer sein.
% xi wird abgeschnitten, wenne es zu lang ist.

function r = eval_newton_poly (ci,xi,x)
  m = length(x);
  r = linspace(ci(1),ci(1),m);
  n = length(ci);
  if (n == 1)
    return;
  end
  if (length(xi) >= n)
    xi = xi(1:(n-1));
  end
  for i = 1:m
    for j = 2:n
      a = ci(j);
      for k = 2:j
        a = a * (x(i) - xi(k-1));
      end
      r(i) = r(i) + a;
    end
  end