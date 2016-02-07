clc
f=@(x) 1+x+x.^2;
m=[2,5,10];
n=[0,1,2];

% C\B ist nur fuer die gegebenen Werte eindeutig loesbar.
% i=1 geht nicht, da fuer ein Polynom 2. Grades 3 Stuetzstellen benoetigt
% werden.
for i=2:3
  %disp(['m: ' num2str(m(i))]);
  [x,y]=generateData(m(i),f);
  %disp('data x');
  %disp(x);
  %disp('data y');
  %disp(y);
  for j=3
    [A,b]=leastSquareSystem(x',y',n(j));
    %disp(['n: ' num2str(n(j))]);
    %disp(' A');
    %disp(A);
    %disp(' b');
    %disp(b);
    C=A'*A;
    B=A'*b;
    disp(C\B);
  end
end
