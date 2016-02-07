function r=sum_quadrature(f,z,ti,wi)
    % Eingabe:  f...function handle
    %           z...Intervallgrenzen [z0,...,zn]
    %           ti...Stützstellen [t0,...,tm]
    %           wi...Gewichte [w0,...,wm]
    % Ausgabe:  Summierte Quadratur von f auf dem Intervall [zo,zn]
    %           auf n-1 Intervallen mit je m Gewichten.
    r = 0;
    for i = 1:(length(z)-1);
        r = r + quadrature(f,z(i),z(i+1),ti,wi);
    end