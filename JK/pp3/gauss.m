function [R,y] = gauss(A,b)
% u¨berfu¨hre Gleichungssystem auf a¨quivalente Dreiecksform 
% Eingabe: A...regula¨re nxn Matrix 
% b...rechte Seite, nx1 Vektor 
% Ausgabe: A...obere Dreiecksmatrix 
% b...modifizierte rechte Seite 
n=size(A,1);
l = 0;

for o = 1:size(b,2) 
for j=1:n 
  % Pivotisierung (Zeilenvertauschung)
  % finde gro¨ßten Eintrag in Spalte j 
  [m,i]=max(abs(A(j:n,j)));
  i=i+j-1; 
  % vertausche Zeilen i und j
if ( m > abs(A(j,j)))  
  l = l + 1 ;
  for k=j:n 
    tmp=A(i,k); A(i,k)=A(j,k); A(j,k)=tmp;
  end
  tmp=b(i,o); b(i,o)=b(j,o); b(j,o)=tmp;
  end
  
  % Erzeuge 0-en in der j-ten Spalte 
  for i=j+1:n 
    lij=A(i,j)/A(j,j); 
    for k=j:n 
      A(i,k) = A(i,k)-lij*A(j,k); 
    end 
  b(i,o)=b(i,o)-lij*b(j,o);
  end 
  end 
if size(b,2) >= 1 
	R = A;
	y = b;
else 
	R = A;
	y = (-1)^l