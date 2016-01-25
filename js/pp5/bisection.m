% Eingabe: f ... function handle
% a, b ... Intervallgrenzen
% tol ... Schranke fuer Abbruch
% Ausgabe: x ... Naeherung fuer Loesung von f(x)=0
% xk ... Vektor der Iterierten
function [x,xk]=bisection(f,a,b,tol)
  fa=f(a); fb=f(b); xk=[];
  while 1
    c=(a+b)/2; fc=f(c);
    xk=[xk,c];
    if abs(b-a)<=tol
      break;
    end
    if fc*fa<0
      b=c; fb=fc;
    else
      a=c; fa=fc;
    end
  end