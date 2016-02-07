for n = 0:3
    fprintf('Fuer n = %1.0f erhalten wir Stützstellen | Gewichte',n)
    [ti, wi] = gauss_rule(n)
end

% Stimmt mit den Werten in der Vorlesung überein. 