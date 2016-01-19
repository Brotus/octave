% Implementierung des Rueckwaertseinsetzens mit mehreren rechten Seiten
% Eingabe: gauss-transformierte Matrix R
%		   die rechten Seiten y
% Ausgabe: eine Matrix x, die in jeder Spalte das Resultat des Rueckwaertseinsetzens
%				der jeweiligen Spalte aus y enthaelt
function x = backward (R, y)
  n = size(R,1); x=0.*y;
  for i = n:-1:1
    for j = i+1:n
      y(i,:)=y(i,:)-R(i,j).*x(j,:);
    endfor
    x(i,:)=y(i,:)/R(i,i);
  endfor
endfunction
