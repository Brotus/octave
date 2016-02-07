% Stellt das least squares System Ax=b auf
% Eingabe: x = Stuetzstellen
%          y = Stuetzwerte
%          n = Grad des Polynoms
% Ausgabe: A = least squares Matrix
%          b = y
function [A,b] = leastSquareSystem (x,y,n)
  m=length(x);
  A=zeros(m,n+1);
  for i=1:(n+1)
    A(:,i)=x.^(i-1);
  end
  b=y;
