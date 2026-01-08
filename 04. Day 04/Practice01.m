# Day 04

# Clear Command History
history -c

# Clear all Variables, Functions and Compiled Codes
clear all

# Close All Open Figure Windows
close all

# Clear the Command Window
clc

% 01. Defining a Matrix
A = [1, 2, 3; 4, 5, 6; 7, 8, 9]

% 02. Finding the Rank (Number of Independent Rows)
printf("The rank of matrix A : %.0f\n\n", rank(A))

% 03. Finding Inverse of a Part of Matrix
inv([1, 2; 4, 5])

% 04. Defining a New Matrix
A = [1, 2]

% 05. Finding pseudo inverse
pinv(A)

% 06. Defining a New Matrix
A = [1 2 3; 4 5 6; 7 8 9]

% 07. Finding the Rank (Number of Independent Rows)
printf("The rank of matrix A : %.0f\n\n", rank(A))

% 08. Finding the Pseudo Inverse
[u, s, v] = svd(A)
