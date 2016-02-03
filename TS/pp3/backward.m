function x=backward(R,y)
% berechnent Lösung x zu Rx=y
% Eingabe:  R... reguläre rechte obere nxn Dreiecksmatrix
%           y... rechte Seite, nxm Matrix
% Ausgabe:  x... Lösung, nxm Vektor
n=size(R,1);
m=size(y,2);
x=0*y;
for i=n:-1:1
  for k=m:-1:1
    for j=i+1:n
      y(i,k)=y(i,k)-R(i,j)*x(j,k);
    end
    x(i,k)=y(i,k)/R(i,i);
  end
end
end