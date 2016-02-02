function [R,y] = gauss(A,b)
% überführe Gleichungssystem auf äquivalente Dreiecksform 
% Eingabe:  A... reguläre nxn Matrix 
%           b... rechte Seite, nxm Matrix 
% Ausgabe:  R... obere Dreiecksmatrix 
%           y... modifizierte rechte Seite 
n=size(A,1); 
nb=size(b,2);
l=0;
for j=1:n 
  % Pivotisierung (Zeilenvertauschung)
  % finde größten Eintrag in Spalte j 
  [m,i]=max(abs(A(j:n,j))); i=i+j-1;
  % vertausche Zeilen i und j falls m größer als das aktuelle Diagonalelement ist
  if (m > abs(A(j,j)))
    l=l+1;
    for k=j:n 
      tmp=A(i,k); A(i,k)=A(j,k); A(j,k)=tmp;
    end 
    if (nb >= 1)
      for k=j:nb
        tmp=b(i,k); b(i,k)=b(j,k); b(j,k)=tmp;
      end
    end
  end
  
  % Erzeuge 0-en in der j-ten Spalte 
  for i=j+1:n 
    lij=A(i,j)/A(j,j); 
    for k=j:n 
      A(i,k) = A(i,k)-lij*A(j,k); 
    end
    if (nb >= 1)
      for k=1:nb
        b(i,k) = b(i,k)-lij*b(j,k);
      end
    end
  end
end
R=A;
if (nb >= 1)
  y=b;
else
  y=(-1)^l;
end
end