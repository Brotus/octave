% testp5.m
%    Teste Ergebnis von expsum und expprod 
%    Algorithmen zur Berechnung von exp(x)
%    an der Stelle x=1 (bzw x=10, x=20)

x=1;
ea=[]; eb=[]; nn=[];
fprintf('n    \t |exp(x)-expsum(x)| \t |exp(x) - expprod(x)|\n')
for n=1:100
  erra=abs(expsum(x,n)-exp(x)); 
  errb=abs(expprod(x,n)-exp(x)); 

%   fprintf('n=%d: \t exp(x)=%g \t expsum(x)=%g \t expprod(x)=%g\n',n,exp(x),expsum(x,n),expprod(x,n));
  fprintf('%d \t %g \t\t %g\n',n,erra,errb);
  ea=[ea,erra];
  eb=[eb,errb];
  nn=[nn,n];
end
loglog(nn,ea,nn,eb,nn,1./nn);legend('|exp-expsum|','|exp-expprod|','1/n','Location','sw')

% Für x=1 bzw |x| klein konvergiert die Exponentialsumme sehr schnell
%   (exponentiell, schneller als N^(-p) für jedes p). 
%   Vergleiche hierzu die Fehlerabschätzung aus dem Skriptum.
%   Das zweite Verfahren exprod konvergiert hingegen (nur) linear
%
% Für |x|>>1 konvergiert die Exponentialsumme hingegen sehr schlecht!
%    Genaue Ergebnisse werden erst für sehr große n erreicht.
%    Dann tritt auch wieder schnelle Konvergenz ein.
%    Das Verfahren expprod konvergiert auch hier linear und 
%    ist für kleine n dem expsum Verfahren überlegen. 
