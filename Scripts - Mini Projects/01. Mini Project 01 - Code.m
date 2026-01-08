# Registration Number : 2023s20371
# Index Number        : s17618
# Assignment          : Mini Project 01 - 2025

% Clear Command History
history -c

% Clear All Variables
clear all

% Close All Open Windows
close all

% Clear The Command Window
clc

% Defining The Coefficient Matrix [A]
A = [1, 1,  1,   1,   1;
     1, 2,  4,   8,  16;
     1, 3,  9,  27,  81;
     1, 4, 16,  64, 256;
     1, 5, 25, 125, 625];

% Defining Constant Vector
b = [-2;
      1;
      6;
     13;
     10];

% Writing a Function to Gaussian Elimination Method & Plot a Function
function [U, x] = gauss(A, b)

  ## Gaussian Elimination Method
  n = length(b);
  for i = 1:n
    for k = i+1:n
      lmb = A(k,i) / A(i, i);
      A(k,:) = A(k,:) - lmb * A(i,:);
      b(k) = b(k) - lmb * b(i);
    endfor
  endfor
   A
   b
   % Defining the Solution Vector
   x = zeros(n,1);
   x(n, 1) = b(n) / A(n, n);
   for j = n-1:-1:1
     x(j) = (b(j) - A(j, j+1:n) * x(j+1:n)) / A(j, j);
   endfor
  x

  ## Plot the Function
  z = linspace(0.5, 5.5, 10000000);
  f = -15 + (25 * z) - (16.5 * z.^2) + (5 * z.^3) - (0.5 * z.^4);
  plot(z, f);
  grid on;
  title("Polynomial Function");
  xlabel('x');
  ylabel('y');
  result = -15 + (25 * 4.5) - (16.5 * 4.5^2) + (5 * 4.5^3) - (0.5 * 4.5^4)';
  fprintf("Value at X = 4.5 : %s\n", num2str(result));

endfunction

% Calling the Function
gauss(A, b)
