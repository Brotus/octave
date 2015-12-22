function [ti,wi] = gauss_rule (n)
%http://www.mathworks.com/matlabcentral/fileexchange/4540-legendre-gauss-quadrature-weights-and-nodes/content/lgwt.m

a = -1; b = 1;
%n=n-1;
n1=n+1; n2=n+2;

xu=linspace(-1,1,n1)';

% Initial guess
y=cos((2*(0:n)'+1)*pi/(2*n+2))+(0.27/n1)*sin(pi*xu*n/n2);

% Legendre-Gauss Vandermonde Matrix
L=zeros(n1,n2);

% Derivative of LGVM
Lp=zeros(n1,n2);

% Compute the zeros of the n+1 Legendre Polynomial
% using the recursion relation and the Newton-Raphson method

y0=2;

% Iterate until new points are uniformly within epsilon of old points
while max(abs(y-y0))>eps    
    L(:,1)=1;
    Lp(:,1)=0;
    
    L(:,2)=y;
    Lp(:,2)=1;
    
    for k=2:n1
        L(:,k+1)=( (2*k-1)*y.*L(:,k)-(k-1)*L(:,k-1) )/k;
    end
 
    Lp=(n2)*( L(:,n1)-y.*L(:,n2) )./(1-y.^2);   
    
    y0=y;
    y=y0-L(:,n2)./Lp;
    
end

% Wie im Skript sind die Legendre-Polynome auf (-1,1) ausgelegt. Die Nullstellen werden
% linear auf [a,b]=[0,1] transformiert
ti=(a*(1-y)+b*(1+y))/2;      

% Compute the weights
wi=((b-a)./((1-y.^2).*Lp.^2)*(n2/n1)^2)./2;

endfunction