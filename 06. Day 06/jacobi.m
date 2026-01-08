# Day 06 - Practice 01

# Clear Command History
history -c

# Clear all Variables, Functions and Compiled Codes
clear all

# Close All Open Figure Windows
close all

# Clear the Command Window
clc

# Summary of Solving Systems of Linear Equations
# ==============================================

% 01. Converting Augmented Matrix into Upper Triangular Matrix.

# Today's Lesson : Iterative Methods (Initial Guess and Improve the Solution)

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

### Method 01 : Jacobi Method
### =========================

##jacobi(A, b, x0, max1)

% Code of the Function
function x = jacobi(A, b, x0, max1)
  N  = length(b);
  x1 = zeros(1, N)
  for i = 1:max1
    for k = 1:N
      x1(k) = b(k) - (A(k, [1:k-1,k+1:N]) * x0([1:k-1,k+1:N])) / A(k, k);
    endfor
    nm = norm(b - A * x1')
    x = x1'
  endfor
  x = x'
endfunction
