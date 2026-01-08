# Day 06 - Practice 02

# Clear Command History
history -c

# Clear all Variables, Functions and Compiled Codes
clear all

# Close All Open Figure Windows
close all

# Clear the Command Window
clc

A = [ 5, -2,  3;
      3,  9,  1;
      2, -1, -7 ]

b = [ -1;
       2;
       3 ]

x0 = [ 0;
       0;
       0 ] % Initial Guess : (0, 0, 0) is the best when it is not given

max1 = 7;

### Method 02 : GS Method
### =========================

### GS(A, b, x0, max1)

% Call the function
solution = GS(A, b, x0, max1);
disp('Gauss-Seidel Solution:');
disp(solution);

% Code of the Function
function x = GS(A, b, x0, max1)
  N  = length(b);
  x = x0;
##  x1 = zeros(1, N)
  for i = 1:max1
    for k = 1:N
      x(k) = (b(k) - A(k, 1:k-1)*x(1:k-1) - A(k, k+1:N)*x(k+1:N)) / A(k, k);
##      x1(k) = b(k) - (A(k, [1:k-1,k+1:N]) * x0([1:k-1,k+1:N])) / A(k, k); old one
    endfor
  endfor
endfunction
