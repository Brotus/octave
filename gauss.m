function [A,b] = gauss(A,b)
% u¨berfu¨hre Gleichungssystem auf a¨quivalente Dreiecksform 
% Eingabe: A...regula¨re nxn Matrix 
% b...rechte Seite, nx1 Vektor 
% Ausgabe: A...obere Dreiecksmatrix 
% b...modifizierte rechte Seite 
n=size(A,1); 
for j=1:n 
  % Pivotisierung (Zeilenvertauschung)
  % finde gro¨ßten Eintrag in Spalte j 
  [m,i]=max(abs(A(j:n,j)));
  i=i+j-1; 
  % vertausche Zeilen i und j 
  for k=j:n 
    tmp=A(i,k); A(i,k)=A(j,k); A(j,k)=tmp;
  end
  tmp=b(i); b(i)=b(j); b(j)=tmp;
  
  % Erzeuge 0-en in der j-ten Spalte 
  for i=j+1:n 
    lij=A(i,j)/A(j,j); 
    for k=j:n 
      A(i,k) = A(i,k)-lij*A(j,k); 
    end 
  b(i)=b(i)-lij*b(j);
  end
end