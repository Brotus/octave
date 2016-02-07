% initializing
f=@(x) exp(x);
a=0;
b=[2.^-[0:5]];
q = zeros(3,6);

% Linksseitige Rechtecksregel
ti = 0; wi = 1;
for i=1:6;
q(1,i) = quadrature (f,a,b(i),ti,wi);
end

% Trapezregel
ti = [0,1]; wi =[1/2 1/2];
for i=1:6;
q(2,i) = quadrature (f,a,b(i),ti,wi);
end

% Simpson
ti = [0 0.5 1]; wi = [1/6 4/6 1/6];
for i=1:6;
q(3,i) = quadrature (f,a,b(i),ti,wi);
end

% Die exakten Werte
integ = [exp(1)-1,exp(1/2)-1,exp(1/4)-1,exp(1/8)-1,exp(1/16)-1,exp(1/32)-1];
Tab = zeros(6,4);
Tab(:,1) = [0:5];
for k = 1:3;
  if (k == 1)
      fprintf('Linksseitige Rechtecksregel \n')
    elseif (k == 2)
      fprintf('Trapezregel \n')
    else
      fprintf('Simpson \n')
  end
    fprintf('h | Quadtratur | Fehler | eoc')
  for i = 1:6; 
    Tab(i,2) = q(k,i);
    Tab(i,3) = abs(integ(i)-q(k,i));
    if (i > 1)
    % log fehlerquotient / log h-quotient
      Tab(i,4) = log(Tab(i-1,3)/Tab(i,3))/log(i/(i-1));
    else 
      Tab(i,4) = inf;  
    end
  end
  Tab
end