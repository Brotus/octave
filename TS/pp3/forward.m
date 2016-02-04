function y = forward(L,b)
% löst Ly=b
% Eingabe:  L... linke untere Dreiecksmatrix
%           b... rechte Seite, nxm-Vektor
% Ausgabe:  y... Lösung, nxm-Vektor
y = 0*b;
for i=1:length(L)
  for j=1:size(b,2)
    for k=1:i-1
      b(i,j) = b(i,j) - L(i,k)*y(k,j);
    end
    y(i,j) = b(i,j) / L(i,i);
  end
end