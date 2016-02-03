% Fuehrt den regula falsi algorithmus durch.
% Eingabe: f = function handle der Funktion deren Nullstelle gesucht werden soll
%          a = untere Grenze des Intervals
%          b = obere Grenze des Intervals
%          tol, maxit = der Algorithmus terminiert nach maxit Iterationen oder wenn
%               vorher abs(x_(k+1)-x_k)<tol ist
% Ausgabe: x = die Loesung
%          xk = Vektor der Iterierten
function [x,xk] = regulaFalsi (f,a,b,tol,maxit)
  xk=[];
  for i=1:maxit
    fa=f(a); fb=f(b);
    c=(a*fb-b*fa)/(fb-fa);
    fc=f(c);
    xk=[xk,c];
    if norm(fc)<tol
      x=c;
      break;
    end
    if fa*fc>0
      a=c;
    else %fb*fc>0
      b=c;
    end
  end
