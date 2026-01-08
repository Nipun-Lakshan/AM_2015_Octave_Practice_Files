# Registartion Number : 2023s20371
# Index Number        : s17618
# Note                : Self Practice Script 01

# Clear all Command History
history -c

# Clear all Variables, Functions and Command History
clear all

# Close all Open Figure Windows
close all

# Clear the Command Window
clc

################################
### Part 01 : Solving Ax = b ###
################################

% Defining Matrix A
A = [2,  3, -1;
     5,  6,  2;
     4, -3,  1 ]

b = [ 9;
     36;
      3 ]

% Function For Solving Ax = b
function[U, x] = gauss(A, b)
  n = length(b);
  for i = 1:n
    for k = i+1:n
      lmb = A(k, i) / A(i, i);
      A(k, :) = A(k, :) - lmb * A(i, :);
      b(k) = b(k) - lmb * b(i);
    endfor
  endfor
  x = zeros(n, 1);
  x(n, 1) = b(n) / A(n, n);
  for j = n-1:-1:1
    x(j) = (b(j) - A(j, j+1:n) * x(j+1:n)) / A(j, j);
  endfor
  U = A;
endfunction

[U, x] = gauss(A, b)

################################
### Part 02 : Finding Norms  ###
################################

% Finding a Transpose of a Vector

A = [5, 7, 9;
     3, 6, 1;
     0, 5, 3 ]

transpose_A = A'
transpose_A = transpose(A)

det(A)

rank(A)
