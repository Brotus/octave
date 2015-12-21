f=@(x)exp(x); a=0; n=5;
h = 2.^-(0:n);
r = zeros(3,n);

for i = 1:(n+1)
  b = h(i);
  
  % linksseitige Rechteckregel
  r(1,i) = quadrature(f,a,b,0,1);
  % Trapez-Regel
  r(2,i) = quadrature(f,a,b,[a,b],[1/2,1/2]);
  % Simpson-Regel
  r(3,i) = quadrature(f,a,b,[0,b/2,b],[1/6,4/6,1/6]);
endfor

r

% h | rechteck | trapez | simpson
% -------------------------------
% 1 |
% 0.5

tab = zeros(n+1,4);
tab(:,1)=h';

for i = 1:3
  for j = 1:n
    tab(j,i+1)=abs(r(i,j)-quad(f,a,h(j)));
  endfor
endfor

tab