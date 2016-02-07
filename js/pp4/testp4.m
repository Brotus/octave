% (a): Skript s. 132
% minimale Fehlerreduktion |||M(omega)|||>0, da M(omega)=I-omega*A...
% L >= 1 - opnorm(A/sqrt(lambdamax(AA'))) soll>0 iff 2. term < 1
% opnorm(A/sqrt(la(AA'))=opnorm(A)/la(AA')=la(A)/la(AA')<1
clc;
disp('Aufgabe (b)');
f = @(x) 0;
for n=1:10
  f = @(x) f(x) + x.^n;
  [x,y] = generateData(n+1,f);
  [A,b] = leastSquareSystem(x',y',n);
  format short e
  [z,res] = richardsonNormal(A,b,1*e-5,30,1);
  disp('loesung = ');
  disp(z);
  format short
  
  % fuer (d)
  fak = zeros(1,30);
  for i=2:length(res)
    fak(i) = res(i)/res(i-1);
  end
  q(n+1) = max(fak);
end


% Aufgabe (c)
% lediglich Ausgabe für das Letzte
k = 0:29;
table = [k.' res.' fak.'];
disp('Aufgabe (c)');
disp(['       ','k', '          ', 'res', '          ', 'fak'])
% fak ungefähr 1
disp(table)

% Aufgabe (d)
disp('Aufgabe (d)')
n = 0:10;
Table = [n.' q.'];
disp(['       ', 'n', '          ', 'q'])
disp(Table)
% q sinkt, da schlechtere kondition fuer groesseres n