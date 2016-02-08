function x=backward(R,y)
% berechnent Loesung x zu Rx=y
% Eingabe:  R...regulare rechte obere nxn Dreiecksmatrix
%           y...rechte Seite, nx1 Vektor
% Ausgabe:  x...Loesung, nx1 Vektor
n=size(R,1); x=0*y;
for i=n:-1:1
    for j=i+1:n
        y(i,:)=y(i,:)-R(i,j)*x(j,:);
    end
    x(i,:)=y(i,:)/R(i,i);
end