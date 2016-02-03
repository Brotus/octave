% Aufgabe (a) überzeugt.

% Aufgabe (b)
% m=n+1 gewählt, da A quadratisch (Satz 10.1)
disp(['Aufgabe (b)'])
f = @(x) 0;
for n=0:10
  f = @(x) f(x) + x^n;
  [x,y] = generateData(n+1,f);
  [A,b] = leastSquareSystem(x,y,n);
  n
  format short e
  [z,res] = richardsonNormal(A,b,1*e-5,30,1)
  format short
  
  % für (d)
  fak = zeros(1,30);
  for i=2:length(res)
    fak(i) = res(i)/res(i-1);
  end
  q(n+1) = max(fak);
end

% Aufgabe (c)
% lediglich Ausgabe für das Letzte
k = [0:29];
table = [k.' res.' fak.'];
disp(['Aufgabe (c)'])
disp(['       ' 'k' '          ' 'res' '          ' 'fak'])
disp(table)

% Aufgabe (d)
disp(['Aufgabe (d)'])
n = [0:10];
Table = [n.' q.'];
disp(['       ' 'n' '          ' 'q'])
disp(Table)