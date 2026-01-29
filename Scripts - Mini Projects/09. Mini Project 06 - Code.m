# Registration Number : 2023s20371
# Index Number        : s17618
# Assignment          : Mini Project 06 - 2025

% Clear Command History
history -c

% Clear All Variables
clear all

% Close All Open Windows
close all

% Clear The Command Window
clc

% Initialize symbolic toolbox
pkg load symbolic;

% Turn Off All Warnings
warning('off', 'all');

### Question 01

% Define a symbolic variable x
syms x;

% Taylor polynomial expansion of sin(x) about x = 0 up to the 5th order
Taylor_Polynomial_5 = taylor(sin(x), x, 0, 'order', 6)

### Question 02

% 0th - order Taylor expansion
T0 = taylor(sin(x), x, 0, 'order', 1);

% 1st - order Taylor expansion
T1 = taylor(sin(x), x, 0, 'order', 2);

% 3rd - order Taylor expansion
T3 = taylor(sin(x), x, 0, 'order', 4);

% 5th - order Taylor expansion
T5 = taylor(sin(x), x, 0, 'order', 6);

% Plot the Graph
figure;
hold on;

% Plot the original function sin(x)
fplot(sin(x), [-pi, pi], 'b', 'LineWidth', 2)

% Plot constant approximation T0(x)
fplot(T0, [-pi, pi], 'r', 'LineWidth', 2)

% Plot constant approximation T1(x)
fplot(T1, [-pi, pi],  'g', 'LineWidth', 2)

% Plot constant approximation T3(x) = 0
fplot(T3, [-pi, pi], 'y--', 'LineWidth', 2)

% Plot constant approximation T5(x) = 0
fplot(T5, [-pi, pi], 'm:', 'LineWidth', 2)

% Add legend to identify each curve
legend('sin(x)', 'T0(X)', 'T1(X)', 'T3(X)', 'T5(X)')

grid on
hold off

### Question 03

% Initialize a 7 x 6 matrix of zeros
Z = zeros(7, 6);

% Array of X Values
X = [0.1, 0.2, 0.3, 0.4, 0.5, 0.8, 1.0];

% Loop through each X Value in X
for i = 1:7

  % Evaluate T1
  T_1 = double(subs(T1, X(i)));

  % Evaluate T3
  T_3 = double(subs(T3, X(i)));

  % Store in matrix row i
  Z(i, :) = [X(i), sin(X(i)), T_1, abs(sin(X(i)) - T_1), T_3, abs(sin(X(i)) - T_3)];
endfor

% Display the full 7 x 6 results matrix
Final_Table = Z

% Display only the last row (x = 1.0) for verification
Final_Row_Answer = Z(7, :)

### Question 04

% Since the relationship between x and
% E1(x) follows y = x, we can conclude that
% E1(x) increases as x moves away from zero.

### Question 05

% First Value Calculation
First_Calculation  = abs(sin(pi/2) - double(subs(T1, pi/2)))
fprintf("\n")

% Second Value Calculation
Second_Calculation = abs(sin(pi)   - double(subs(T1, pi)))
fprintf("\n")

### Question 06

% 1st - order Taylor expansion
T1 = taylor(sin(x), x, 0, 'order', 2)
fprintf("\n")

% 2nd - order Taylor expansion
T2 = taylor(sin(x), x, 0, 'order', 3)
