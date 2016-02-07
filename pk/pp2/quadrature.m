function r = quadrature (f,a,b,ti,wi)
% Eingabe:    f...function handle
%             a...linke Grenze
%             b...rechte Grenze
%             ti...Stützstellen
%             wi...Integrationsgewichte
% Ausgabe     r...Wert der Quadratur
  r= 0;
  for i=1:length(wi);
    r = r + wi(i)*f(a+ti(i)*(b-a));
  end
  r=(b-a)*r;