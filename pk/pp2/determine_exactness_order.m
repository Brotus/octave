function m=determine_exactness_order(ti,wi)
% Eingabe:  ti...Stützstellen
%           wi...Integrationsgewichte
% Ausgabe:  m... Exaktheitsgrad
for j=0:10000
    if (abs(quadrature(@(x) x^j,0,1,ti,wi) - 1/(j+1)) > 1e-12)
        m=j-1;
        break
    end
end
