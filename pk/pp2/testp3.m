for n = 1:5
    ti=[0:1/n:1]';
    wi=compute_weights(ti);
    
    fprintf('Für n = %2.0f gibt es folgende Stützstellen | Gewichte',n)
    [ti, wi]
end

% Vergleich: Wie im Skript (bis auf Rundungsfehler).