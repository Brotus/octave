function x = solve(A,b)

[R,y] = gauss(A,b);
x = rueckwaerts(R,y);