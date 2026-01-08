# Registration Number : 2023s20371
# Index Number        : s17618
# Assignment          : Mini Project 02 - 2025

% Clear Command History
history -c

% Clear All Variables
clear all

% Close All Open Windows
close all

% Clear The Command Window
clc

# Question 01 - Defining Vandermonde Matrix
V = [  1,   1,  1, 1, 1;
      16,   8,  4, 2, 1;
      81,  27,  9, 3, 1;
     256,  64, 16, 4, 1;
     625, 125, 25, 5, 1 ]

# Question 02 - Check whether V matrix is symmetric
Transpose_V = V'
printf("\nIs V a symmeric matrix: No\n")

# Question 03 - Finding the Determinant of a Matrix
printf("\nThe determinant of Vandermonde Matrix: %f\n\n", det(V))

# Question 04 - Finding the Rank of a Matrix
printf("The rank of Vandermonde Matrix: %d\n\n", rank(V))

# Question 05 - Finding Vector B
x = [1; 0; 0; 0; 0]
b = V * x

# Question 06 - Finding Vector X_Computed
X_Computed = V \ b

# Question 07 - Finding the New X Vector
delta_b = [0; 0; 0; 0; 10^(-4)]
b_pertubed = b + delta_b
delta_X = V \ b_pertubed

# Question 08: Computing the Minimum Value of the 2 - Norm Condition Number
K_2V = (norm((delta_X - x), 2) * norm(b, 2)) / (norm(x, 2) * norm(delta_b, 2)) # X + deltaX = delta_X
printf("\n")

# Question 09: Calculating Condition Number
condition_V = norm(V, 2) * norm(inv(V),2)
printf("\n")

# Question 10: Calculating Condition Number Using a Function
printf("The condition number of V using the cond(V) function: %f\n", cond(V))
