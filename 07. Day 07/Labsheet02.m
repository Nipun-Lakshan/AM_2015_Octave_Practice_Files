# Week 10 - Labsheet 06 - Part II

% Clear Command History
history -c

% Clear All Variables
clear all

% Close All Open Windows
close all

% Clear The Command Window
clc

# Question 02

% Load Symbolic Package
pkg load symbolic
syms x

% Define the Function
f = e^(x - (pi/2)) + 3*cos(x) + 2*sin(x)
xval = pi/2;
xval_sym = sym(xval)

exact_value = double(subs(f, x, xval_sym));

max_degree = 50;
tolerance = 1e-6;

disp('n exact value Taylor Approximation Relative Error')
converged = false

for n=0:max_degree
  Tn = taylor(f, x, 0, 'Order', n+1)
  approx_value = double(subs(Tn, x, xval_sym))
  rel_error = abs(exact_value - approx_value)/abs(exact_value);
  fprintf('%2i %15.10f %15.10f %4.2e\n', n, exact_value, approx_value, rel_error)

  if rel_error < tolerance
    fprintf('Converged at degree n = %d with relative error < %e\n', n, tolerance)
    converged = true;
    break
  endif
end

if ~converged
  fprintf('Did not converge within degree', max_degree)
end

