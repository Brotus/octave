for n = 1:5
    ti=[0:1/n:1]';
    wi=compute_weights(ti);
    
    fprintf('Für n =%2.0f hat die Newton-Cotes Formel Exaktheitsgrad %1.0f\n',n,determine_exactness_order(ti, wi))
end

% Stimmt mit den Exaktheitsgraden die wir in der Vorlesung bestimmt haben
% überein.