# Registration Number : 2023s20371
# Index Number        : s17618
# Question 02 - In Class Assignment 01

history -c
clear all
close all
clc

A = [1, 1, -1, -1;
     1, 2,  0,  0;
     0, 0,  5, -1;
     0, 2,  3,  0 ]

b = [ 0;
     14;
     10;
      6 ]

# Gauss Elimination Method
A(2, :) = A(2, :) - A(1, :);
A(4, :) = A(4, :) - (2 * A(2, :));
A(4, :) = A(4, :) - A(2, :);
A

A = [1, 1, -1, -1;
     1, 2,  0,  0;
     0, 0,  5, -1;
     0, 2,  3,  0 ]

c = [ 0;
     14;
     10;
      6 ]

# Function Definition
function[U, x] = back4sub(A, c)
  n = length(c);
  for i = 1:n
    for k = i+1:n
      lmb = A(k, i) / A(i, i);
      A(k, :) = A(k, :) - lmb * A(i, :);
      c(k) = c(k) - lmb * c(i);
    endfor
  endfor
  x = zeros(n, 1);
  x(n, 1) = c(n) / A(n, n);
  for j = n-1:-1:1
    x(j) = (c(j) - A(j, j+1:n) * x(j+1:n)) / A(j, j);
  endfor
  U = A
  x
  c
endfunction

# Function Calling
back4sub(A, c)

# Determinant of A
det(A)

