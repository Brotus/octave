for n = 1:5
    ti=[0:1/n:1]';
    wi=compute_weights(ti);
    
    fprintf('F�r n = %2.0f gibt es folgende St�tzstellen | Gewichte',n)
    [ti, wi]
end

% Vergleich: Wie im Skript (bis auf Rundungsfehler).