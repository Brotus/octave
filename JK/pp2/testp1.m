f = @(x) e^x;
 a = 0;
 b = [2.^-[0:5]];
 
 %Rechtecksregel
 ti = 0;
 wi = 1;
 for i = 1:length(b)
	quadrature(f, a, b(i), ti, wi)
end

%Trapezregel
ti = [0,1]
wi = [0.5, 0.5]
 for i = 1:length(b)
	quadrature(f, a, b(i), ti, wi)
end

%Simpsonregel
ti = [0, 0.5, 1];
wi = [1/6, 4/6, 1/6];
 for i = 1:length(b)
	quadrature(f, a, b(i), ti, wi)
end