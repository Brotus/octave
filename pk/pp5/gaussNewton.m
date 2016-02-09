function [x,xk]=gaussNewton(F,DF,x0,tol,maxit)
%Löst das nichtlineare Ausgleichsproblem ||F(x)||^2-> min
%   Eingabe:    F ... function handle
%               DF .. Jacobimatrix von F
%               x0 ... Startwert der Iteration
%               tol ... Tollerierter Fehler
%               maxit ... Maximale Anzahl Iterationen
%   Ausgabe:    x ... Lösung (Annäherung)
%               xk ... x während der Iterationsschritte
  w=1; % Evtl. als Übergabeparameter?
  xk = [];
  for k=1:maxit
    dfx0=DF(x0);
    x=x0-w*(dfx0'*dfx0)^(-1)*dfx0'*F(x0);
    xk=[xk,x];
    if (norm(x-x0)<tol)
      return;
    end
    x0=x;
  end

