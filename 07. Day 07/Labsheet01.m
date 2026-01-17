# Week 10 - Labsheet 06 - Part I

% Clear Command History
history -c

% Clear All Variables
clear all

% Close All Open Windows
close all

% Clear The Command Window
clc

# Question 01

% Load Symbolic Package
pkg load symbolic
syms x

% Define the Function
f = e^(x - (pi/2)) + 3*cos(x) + 2*sin(x)

% Plot the Graph
figure;
fplot(f, [-2.5, 2.5], 'Linewidth', 2);
hold on;

% Taylor Expansion
T3 = taylor(f, x, 0, 'Order', 3)
T5 = taylor(f, x, 0, 'Order', 5)

% Plot Taylor Expansions
fplot(T3, [-2.5, 2.5], '--', 'Linewidth', 2)
fplot(T5, [-2.5, 2.5], '-.', 'Linewidth', 2)

% Labelling Graphs
legend('f(x) = e^((x - (pi/2))) + 3cos(x) + 2sin(x)', 'T3', 'T5', 'Location', 'northeast')
xlabel('x')
ylabel('y')
title('Function and Taylor Approximation about x = 0')
grid on

% Error Calculation
error_tol = 1e-5;
n = 0;
Tn = 0;
while true
  Tn = taylor(f, x, 0, 'Order', n+1)
  xs = linspace(-2.5, 2.5, 100)
  err = max(abs(double(subs(f, x, xs)-double(subs(Tn, x, xs)))))
  if err < error_tol
    break
  endif
  n = n + 1
endwhile
fprintf('Number of terms needed : %d\n', n + 1)
