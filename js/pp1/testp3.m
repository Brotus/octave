% Teilaufgabe (a)

f=@(x)exp(x);
n=1;
m=10;
x=zeros(n+1,m+1);

k=0:10;
h=2.^(-k);

% i+1. Zeile = xi
for i=0:n
  x(i+1,:)=i.*h;
endfor

y=f(x);
% Da x(1,:)=zeros(1,11), sind hier keine geeigneten Stuetzstellen gegeben, weil verschiedene Stuetzstellen nicht gleich sein duerfen.
%[c0,x0]=compute_newton_poly(x(1,:),y(1,:));

% c1 enthält nun die Koeffizienten von p_1 in Newon-Darstellung
[c1,x1]=compute_newton_poly(x(2,:),y(2,:))