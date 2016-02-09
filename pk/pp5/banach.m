function [x,xk] = banach(phi,x0,tol,maxit)
% Berechnet die L�sung zu phi(x) = 0
% Eingabe:  phi.... Kontraktion
%           x0..... Startvektor
%           tol.... Abbruchstoleranz
%           maxit.. Maximale Iterationszahl
% Ausgabe:  x...... Numerische L�sung
%           xk..... Matrix aller L�sungen
  x = x0;
  xk(:,1) = x;
  for i=2:maxit
    x = phi(xk(:,i-1));
    xk(:,i) = x;
    if norm(xk(:,i) - xk(:,i-1)) < tol
      break;
    end
  end
end