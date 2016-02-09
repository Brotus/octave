% Diese Funktion berechnet numerisch mittels linearer Quadratur das 
%   Integral von f im Interval [a,b].
% Eingabe:    f ist die Funktion (function handle)
%             a ist die linke Grenze
%             b ist die rechte grenze
%             ti sind die Stuetzstellen
%             wi sind die Integrationsgewichte
% Ausgabe:    r ist der Wert des numerischen Integrals
function r = quadrature (f,a,b,ti,wi)
  r = 0;
	h=b-a;
  for i = 1 : length(ti)
    r = r + wi(i)*f(a+ti(i)*h);
  end
  r = h*r;
