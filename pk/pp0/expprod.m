function r=expprod(x,n)
% function r=expprod(x,n)
%    Berechne die Näherung (1+x/n)^n für exp(x)
%    Eingabe: x ... Argument von exp(x)
%             n ... Potenz
%    Ausgabe: r ... Approximation für exp(x)

r=1;
f=(1+x/n);
for k=1:n
  r=f*r;
end

% Komplexität: 
% 1 Add und 1 Div; dann je 1 Mult je Schleife, also O(n)
