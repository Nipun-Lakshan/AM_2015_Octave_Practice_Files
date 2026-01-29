# Registration Number : 2023s20371
# Index Number        : s17618
# Assignment          : Mini Project 05 - 2025

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
A = [ 4, -1, 1;
      4, -8, 1;
     -2,  1, 5 ]

% Define Matrix b
b = [  7;
     -21;
      15 ]

% Solution to x of Ax = b
x = A \ b

### Question 02

% Define Initial Guess
x_0=[ 1;
      2;
      2 ]

% Code For Jacobi Iteration
function distances = jacobi(A, b, x0, max1)
  N  = length(b);
  distances = zeros(1, max1);

  % Calculate Actual Value of x
  x_actual = A \ b;

  % Current Approximation
  xi = x0;

  for i = 1:max1
    x_new = zeros(N, 1);

    for k = 1:N
      % Jacobi Formula
      x_new(k) = (b(k) - (A(k, [1:k-1,k+1:N]) * xi([1:k-1,k+1:N]))) / A(k, k);
    endfor

    % Calculate 2 - norm distances
    distances(i) = norm(x_actual - x_new, 2);

    % Update for next iteration
    xi = x_new;

  endfor
endfunction

% Calling the Function
Distances1 = jacobi(A, b, x_0, 5);
disp('Distances for first 5 iterations: ');
disp(Distances1);
printf("\n")

### Question 03

% Define Initial Guess
x_0=[ 1;
      2;
      2 ]

% Code of the Function
function distances = gauss_seidel(A, b, x0, max1)
  N  = length(b);
  distances = zeros(1, max1);

  % Current Approximation
  x_current = x0;

  % Calculate Actual Value of x
  actual_solution = A \ b;

  for i = 1:max1
    for k = 1:N
      % Gauss - Seidel Formula
      x_current(k) = (b(k) - A(k, [1:k-1,k+1:N]) * x_current([1:k-1,k+1:N])) / A(k, k);
    endfor

    % Calculate 2 - norm distances
    distances(i) = norm(actual_solution - x_current, 2);
  endfor
endfunction

% Calling the Function
Distances2 = gauss_seidel(A, b, x_0, 5);
disp('Distances for first 5 iterations:');
disp(Distances2);
printf("\n")

### Question 04

% Define the 2-norm of distances from the Jacobi method
Jacobi_Distances = Distances1;

% Define the 2-norm of distances from the Gauss - Siedel method
GS_Distances = Distances2;

% Count of occurrences where Jacobi method is better
count1 = 0;

% Count of occurrences where Gauss - Seidel method is better
count2 = 0;

% Comparison of Values as Pairs
for i = 1:5
    jac = Jacobi_Distances(i);
    gs = GS_Distances(i);

    if gs < jac
        count2 = count2 + 1;
    elseif jac < gs
        count1 = count1 + 1;
    else
        count2 = count2 + 0;
        count1 = count1 + 0;
    end
endfor

% Conclusion
if count1 > count2
  printf("Better Method : Jacobi Method\n\n")
elseif count1 < count2
  printf("Better Method : Gauss - Seidel Method\n\n")
else
  printf("Better Method : Both are same\n\n")
end

### Question 05

% Function to Find Linear System
function [E, f] = jacobi_iteration(A, b)
  N = length(b);
  E = zeros(size(A));
  f = zeros(N, 1);

  for i = 1:N
    f(i) = b(i) / A(i, i);
    E(i,:) = -A(i, :) / A(i, i);
    E(i, i) = 0;
  endfor

endfunction

% Calling the Function
[E1, f1] = jacobi_iteration(A, b)

### Question 06

% Function to Find Linear System
function [E, f] = gauss_seidel_iteration(A, b)
  N = length(b);

  D = zeros(size(A));
  L = D;
  U = D;

  for i = 1:N
    for j = 1:N
        if i > j
            L(i, j) = A(i, j);
        elseif i < j
            U(i, j) = A(i, j);
        else
            D(i, j) = A(i, j);
        end
    endfor
  endfor

  E = inv(-(D + L)) * U;
  f = inv(D + L) * b;
endfunction

% Calling the Function
[E2, f2] = gauss_seidel_iteration(A, b)

### Question 07

printf("Spectral Radius of Matrix E for Jacobi Iteration : %.4f\n\n", max(abs(eigs(E1))))

### Question 08

printf("Spectral Radius of Matrix E for Gauss - Seidel Iteration : %.4f\n\n", max(abs(eigs(E2))))

### Question 09

% Define New Matrix A
A = [-2,  1, 5;
      4, -8, 1;
      4, -1, 1 ]

% Define New Matrix b
b = [ 15;
     -21;
       7 ]

% Calling the Jacobi Iteration Function
[E3] = jacobi_iteration(A, b)
printf("Spectral Radius of Matrix E for Jacobi Iteration : %.4f\n\n", max(abs(eigs(E3))))

### Question 10

[E4] = gauss_seidel_iteration(A, b)
printf("Spectral Radius of Matrix E for Gauss - Seidel Iteration : %.4f\n\n", max(abs(eigs(E4))))

### Question 11

# For the rearranged system, the spectral radius of matrix E is greater than 1 for both
# Jacobi and Gauss - Seidel iterative methods. Therefore, the system diverges regardless
# of the initial guess.
