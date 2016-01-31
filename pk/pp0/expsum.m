function r=expsum(x,n)
% function r=expsum(x,n)
%    Berechne die Exponentialssumme
%    Eingabe: x ... Argument von exp(x)
%             n ... Abbruch der Reihe
%    Ausgabe: r ... Exponentialssumme

r=1;
for k=n:-1:1
  r=r*(x/k)+1;
end

% Komplexität: 
% je 1 Mult, Add, Div je Schleife, also O(n)
