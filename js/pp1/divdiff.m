function c=divdiff(x,y)
% Eingabe: x...Stutzstellen   [x0,x1,...,xn]
%          y...Stutzwerte     [y0,y1,...,yn]
% Ausgabe: c...Koeffizienten  [c0,c1,...,cn]
% Indizierung: x(1)=x0, x(2)=x1, usw
m=length(x); % m=n+1
c=y;
  for i=1:m-1
    for j=m:-1:i+1
    c(j)=(c(j)-c(j-1))/(x(j)-x(j-i));
    end
  end