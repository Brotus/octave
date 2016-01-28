% linke OBERE dreiecksmatrix

% Implementierung des  Forwaertseinsetzens mit mehreren rechten Seiten
% Eingabe: gauss-transformierte Matrix R
%		   die rechten Seiten y
% Ausgabe: eine Matrix x, die in jeder Spalte das Resultat des Forwaertseinsetzens
%				der jeweiligen Spalte aus y enthaelt
function x = forward (R, y)
  n = size(R,1); x=0.*y;
  for i = n:-1:1
    for j = 1:(n-i)
      y(i,:)=y(i,:)-R(i,j).*x(j,:);
    end
    x(n-i+1,:)=y(i,:)/R(i,n-i+1);
  end