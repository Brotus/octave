clc;
disp('Teilaufgabe (a)');
% n+1 mal die 1

disp('Teilaufgabe (b), (c) und (d)');
m=100;
f = @(x) 0;

condNG = zeros(11,1);
condQR = condNG;
errNG = condNG;
errQR = condNG;

for n=0:10
  f = @(x) f(x) + x.^n
  [x,y] = generateData(m,f);
  [A,b] = leastSquareSystem(x',y',n);
  [Q,R] = qr(A);
  NG = A.'*A\A.'*b;
  disp(NG);
  QR = Q.'*Q*R\Q.'*b;
  disp(QR);
  % Konditionen cond_2(A) berechnen
  condNG(n+1) = norm(inv(A.'*A))*norm(A.'*A);
  condQR(n+1) = norm(inv(R.'*R))*norm(R.'*R);
  % Fehler
  errNG(n+1) = norm(ones(n+1,1)-NG,inf);
  errQR(n+1) = norm(ones(n+1,1)-QR,inf);
end

format short e
disp(['n','   ','condNG','   ','condQR','   ','errNG','   ','errQR']);
disp([(0:10)',condNG,condQR,errNG,errQR]);

% Bei groesserem n steigt die Kondition. Der Datenfehler wird also
% zunehmend verstaerkt.
% Der Fehler in den Koeffizientenvektoren steiget wegen schlechterer
% Konditionierung.