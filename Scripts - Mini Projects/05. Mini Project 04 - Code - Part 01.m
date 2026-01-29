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

### Question 03

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

% Define a Rounding Function for Matrices to Three Significant Figures
function y = round3(x)
    y = zeros(size(x));
    nonzero = (x ~= 0);
    scale = 10.^(2 - floor(log10(abs(x(nonzero)))));
    y(nonzero) = round(x(nonzero) .* scale) ./ scale;
end

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
