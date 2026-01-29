# Registration Number : 2023s20371
# Index Number        : s17618
# Assignment          : Mini Project 04 - 2025

% Clear Command History
history -c

% Clear All Variables
clear all

% Close All Open Windows
close all

% Clear The Command Window
clc

### Question 01

% Define Matrix A
A = [     pi,       -e,  sqrt(2),  sqrt(3);
         e^2,        e,    -pi^2,      3/7;
     sqrt(5), -sqrt(6),        1, -sqrt(2);
        pi^3,        e, -sqrt(7),      1/11 ]

% Define Matrix b
b = [sqrt(11);
            0;
           pi;
       sqrt(2)]

% Function For Gaussian Elimination Method
function[U, x] = gauss(A,b)
  n = length(b);
  for i = 1:n
    for k = i+1:n
      lmb = A(k, i) / A(i, i);
      A(k,:) = A(k, :) - lmb * A(i, :);
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

% Calling the Gaussian Elimination function
[~, x] = gauss(A, b)

### Question 02

% Define a Rounding Function for Matrices to Three Significant Figures
function y = round3(x)
    y = zeros(size(x));
    nonzero = (x ~= 0);
    scale = 10.^(2 - floor(log10(abs(x(nonzero)))));
    y(nonzero) = round(x(nonzero) .* scale) ./ scale;
end

% Calling the Rounding Function for Matrices
X1 = round3(x)

### Question 03

% Function For Gaussian Elimination Method
function[U, x] = gauss(A,b)
  n = length(b);
  for i = 1:n
    for k = i+1:n
      lmb = round3(A(k, i)) / round3(A(i, i));
      A(k,:) = round3(A(k, :)) - round3(lmb * round3(A(i, :)));
      b(k) = round3(b(k)) - round3(lmb * round3(b(i)));
    endfor
  endfor
  x = zeros(n, 1);
  x(n, 1) = round3(round3(b(n)) / round3(A(n, n)));
  for j = n-1:-1:1
    x(j) = round3((round3(b(j)) - round3(A(j, j+1:n)) * round3(x(j+1:n))) / round3(A(j, j)));
  endfor
  U = A;
endfunction

% Calling the Gaussian Elimination function
[~, X2] = gauss(A, b)

### Question 04

% Function For Gaussian Elimination Method with Partial Pivoting
function x = gauss_with_partial_pivoting(A, b)
  n=length(b);
  for i=1:n
    [p, q] = max(abs(round3(A(i:n,i))));
    l = q + i - 1;
    C = A(i, :);
    d = b(i);
    A(i,:) = A(l,:);
    A(l, :) = C;
    b(i) = b(l);
    b(l) = d;
    for j=i+1:n
      lmb = round3(round3(A(j, i)) / round3(A(i, i)));
      A(j,:) = round3(A(j,:)) - round3(lmb * round3(A(i, :)));
      b(j) = round3(round3(b(j)) - round3(lmb * round3(b(i))));
    endfor
  endfor
  x = zeros(n,1);
  x(n) = round3(round3(b(n)) / round3(A(n,n)));
  for k=n-1:-1:1
    x(k)= round3((round3(b(k)) - round3(round3(A(k,k+1:n)) * round3(x(k+1:n)))) / round3(A(k,k)));
  endfor
endfunction

% Calling the Gaussian Elimination function with Partial Pivoting
X3 = gauss_with_partial_pivoting(A, b)

### Question 05

% Function For Gaussian Elimination Method with Scaled Partial Pivoting
function x = gauss_scaled_partial_pivoting(A,b)
  n = length(b);
  C = [A, b];
  L = zeros(1, n);
  for i = 1:n
    L(i) = max(abs(round3(A(i,:))));
  endfor
  for j=1:n
    [p, q] = max(round3(abs(round3(A(j:n, j))./ round3(L(j:n)'))));
    l = q + j - 1;
    D = C(j, :);
    C(j, :) = C(l, :);
    C(l, :) = D;
    M = L(j);
    L(j) = L(l);
    L(l) = M;
    for k = j+1:n
      lmb = round3(round3(C(k, j)) / round3(C(j, j)));
      C(k, :) = round3(round3(C(k, :)) - round3(lmb * round3(C(j, :))));
    endfor
  endfor
  A = C(1:n, 1:n);
  b = C(1:n, n+1);
  x = zeros(n, 1);
  x(n) = round3(round3(b(n)) / round3(A(n, n)));
  for k = n-1:-1:1
    x(k) = round3((round3(b(k)) - round3(round3(A(k, k+1:n)) * round3(x(k+1:n)))) / round3(A(k,k)));
  endfor
endfunction

% Calling the Gaussian Elimination function with scaled partial pivoting
X4 = gauss_scaled_partial_pivoting(A, b)

### Question 06

% First Calculation
First = norm((X1 - X2), 2)

% Second Calculation
Second = norm((X1 - X3), 2)

% Third Calculation
Third = norm((X1 - X4), 2)

### Question 07

% Best Strategy : Gaussian Elimination with Partial Pivoting

% Description
% ===========

##Based on the calculated 2 - norm values, we can conclude that the most accurate solution
##that is closest to the exact result was obtained using Gaussian elimination with partial
##pivoting. In contrast, the least accurate result was produced by Gaussian elimination with
##scaled partial pivoting.
