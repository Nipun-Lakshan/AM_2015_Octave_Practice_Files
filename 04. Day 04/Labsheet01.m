# Day 04 - Labsheet 01 - Introduction

# Clear Command History
history -c

# Clear all Variables, Functions and Compiled Codes
clear all

# Close All Open Figure Windows
close all

# Clear the Command Window
clc

% 01. Finding the Generalized Matrix
A = [5, 6, 7; 8, 9, 10; 11, 13, 15]

% 02. Find the Rank of A
printf("The rank of matrix A : %.0f\n\n", rank(A))

% 03. Getting a Sub Matrix Which is Invertible
Z = [5, 6; 8, 9]

% 04. Finding the Inverse of Sub Matrix
H = inv(Z)

% 05. Generalized Matrix
G = zeros(3, 3);

% 06. Substituting Values
G(1, 1) = H(1, 1);
G(1, 2) = H(1, 2);
G(2, 1) = H(2, 1);
G(2, 2) = H(2, 2);
G

# Easiest Way
printf("Easiest Way to Get G From H\n")
printf("===========================\n\n")
G = inv(Z);
G(3, 3) = 0

% 07. L. H. S. of AGA = A
LHS = A * G * A
RHS = A
printf("Is AGA = A for Matrix A : True\n\n")

# Labsheet 01 - Question 01
A = [1, 2; -1, -2]
Pesudo_Inv = pinv(A)
LHS = A * Pesudo_Inv * A
RHS = A
printf("Is APA = A for Matrix A : True\n\n")
Transpose_Pesudo_Inverse = transpose(Pesudo_Inv)
A_Transpose_Pesudo_Inverse = pinv(transpose(A))

% Function To Round Off Elements in Matrix
round3 = @(X) round(X*10^3)/10^3;
Equality = isequal(round3(Transpose_Pesudo_Inverse), round3(A_Transpose_Pesudo_Inverse))
printf("\n\n")

A = [1, -1; 0, 0; 1, -1]
Pesudo_Inv = pinv(A)
LHS = A * Pesudo_Inv * A
RHS = A
printf("Is APA = A for Matrix A : True\n\n")
Transpose_Pesudo_Inverse = transpose(Pesudo_Inv)
A_Transpose_Pesudo_Inverse = pinv(transpose(A))

% Function To Round Off Elements in Matrix
round3 = @(X) round(X*10^3)/10^3;
Equality = isequal(round3(Transpose_Pesudo_Inverse), round3(A_Transpose_Pesudo_Inverse))
printf("\n\n")

# Labsheet 01 - Question 03
B = [2, 3; 0, 1; 4, 0]
B_Transpose_B = transpose(B) * B
B_Transpose_B_Inverse = inv(transpose(B) * B)
C = B_Transpose_B_Inverse * transpose(B)
Pesudo_Inv_B = pinv(B)
Equality = isequal(round3(Pesudo_Inv_B), round3(C))
printf("\n\n")

# Labsheet 01 - Question 04
A = [1, 2, 4, 3; 3, 5, 12, 9; 2, 4, 8, 6]
printf("The rank of matrix A : %.0f\n\n", rank(A))
Sub_Matrix = [1, 2; 3, 5];
G = inv(Sub_Matrix);
G(3, 4) = 0

LHS = A * G * A
##RHS = A
##
##Equality = isequal(round3(LHS), round3(RHS))
