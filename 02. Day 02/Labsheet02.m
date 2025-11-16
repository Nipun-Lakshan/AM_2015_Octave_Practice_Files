# Day 02 - Labsheet 02 - Answer

% To remove all unwanted variables
clear all
clc

% Defining Coefficient Matrix
A = [1, 1, 1; 80, 120, 150; 2, -1, 0];

% Defining a Column Matrix
b = [10; 1180; 0];

function[U, x] = gauss(A,b)
  n = length(b);
  for i = 1:n
    for k = i+1:n
      lmb = A(k,i)/A(i,i);
      A(k,:) = A(k,:) - lmb * A(i,:);
      b(k) = b(k) - lmb * b(i);
    endfor
  endfor
  A
  b
  x = zeros(n, 1);
  x(n, 1) = b(n)/A(n,n);
  for j = n-1:-1:1
    x(j) = (b(j) - A(j, j+1:n) * x(j+1:n))/A(j, j);
  endfor
  x
endfunction

gauss(A,b)
