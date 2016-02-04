format short G;
f=@(x)exp(x); a=0; n=5;
h = 2.^-(0:n);
r = zeros(3,n);

for i = 1:(n+1)
  b = h(i);
  
  % linksseitige Rechteckregel
  r(1,i) = quadrature(f,a,b,0,1);
  % Trapez-Regel
  r(2,i) = quadrature(f,a,b,[0,1],[1/2,1/2]);
  % Simpson-Regel
  r(3,i) = quadrature(f,a,b,[0,1/2,1],[1/6,4/6,1/6]);
end

r

% h | rechteck | rechteck eoc | trapez | trapez eoc | simpson | simpson eoc
% -------------------------------------------------------------------------
% 1 |
% 0.5

tab = zeros(n+1,7);
tab(:,1)=h';

for i = 1:3
  for j = 1:(n+1)
    %tab(j,2*i)=abs(r(i,j)-quad(f,a,h(j)));
		tab(j,2*i)=abs(r(i,j)-f(h(j))+f(a));
    if (j > 1)
      %tab(j,2*i+1)=log(r(i,j)/r(i,j-1))/log(h(j)/h(j-1));
			tab(j,2*i+1)=log(tab(j-1,2*i)/tab(j,2*i))/log(h(j-1)/h(j));
    else
      tab(j,2*i+1)=-1;
    endif
  endfor
endfor

tab