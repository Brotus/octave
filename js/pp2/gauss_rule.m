function [ti,wi] = gauss_rule (n)
% Source:
% http://www.mathworks.com/matlabcentral/fileexchange/4540-legendre-gauss-quadrature-weights-and-nodes/content/lgwt.m

% linke und rechte Intervallgrenze
a = -1; b = 1;
% n=n-1;
n1=n+1; n2=n+2;

xu=linspace(-1,1,n1)';

% anfaengliche Schaetzung
% gewonnen aus der Integraldarstellung
y=cos((2*(0:n)'+1)*pi/(2*n+2))+(0.27/n1)*sin(pi*xu*n/n2);

% Legendre-Gauss Vandermonde Matrix
L=zeros(n1,n2);

% Ableitung von LGVM (L)
Lp=zeros(n1,n2);

% Nullstellen des (n+1)-ten Legendre-Polynoms berechnen
% mit Benutzung der Rekursionsformel und der Newton-Raphson Methode

y0=2;

% Iterieren, bis die neuen Punkte gleichmaessig in einer epsilon-Umgebung
% der alten Punkte sind
while max(abs(y-y0))>eps 
    % Speichern von P_1(x)=1 und P_1'(x)=0
    L(:,1)=1;
    Lp(:,1)=0;
    
    % Speichern von P_2(x)=x und P_2'(x)=1
    L(:,2)=y;
    Lp(:,2)=1;
    
    % Weil die Rekursionsformel erst ab n=3 gilt
    
    for k=2:n1
        %nP_n(x)=(2n-1)P_(n-1)(x)-(n-1)P_(n-2)(x)
        L(:,k+1)=( (2*k-1)*y.*L(:,k)-(k-1)*L(:,k-1) )/k;
    end
 
    % Hier findet die "Verschiebung" statt
    Lp=(n2)*( L(:,n1)-y.*L(:,n2) )./(1-y.^2);   
    
    y0=y;
    y=y0-L(:,n2)./Lp;
end

% Wie im Skript sind die Legendre-Polynome auf (-1,1) ausgelegt. Die Nullstellen werden
% linear auf [a,b]=[0,1] transformiert
ti=(a*(1-y)+b*(1+y))/2;      

% Berenchung der Integrationsgewichte
wi=((b-a)./((1-y.^2).*Lp.^2)*(n2/n1)^2)./2;