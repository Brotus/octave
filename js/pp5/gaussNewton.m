function [x,xk]=gaussNewton(F,DF,x0,tol,maxit)
  f=