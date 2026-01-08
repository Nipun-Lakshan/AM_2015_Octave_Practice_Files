# Registration Number : 2023s20371
# Index Number        : s17618
# Assignment          : Mini Project 03 - 2025

% Clear Command History
history -c

% Clear All Variables
clear all

% Close All Open Windows
close all

% Clear The Command Window
clc

### Question 01

% 01. Defining the Matrix A
A = [ 1, 1, 1, 1;
     -1, 0, 2, 1;
      1, 2, 0, 1;
      1, 2, 1, 1;
      1, 1, 5, 1]

% 02. Finding the Rank of Matrix A
fprintf("The rank of matrix A : %0.f\n\n", rank(A))

### Question 02

% 03. Defining a Submatrix of A
Sub_Matrix_of_A = A(1:4, 1:4)

% 04. Finding the Determinant of a Submatrix of A
fprintf("The determinant of a Submatrix of A : %0.f\n\n", det(Sub_Matrix_of_A))

####### Since the determinant of the submatrix of A is not equal to zero,
####### it is non - singular and invertible.

% 05. Finding the Inverse of a Submatrix of A
Inverse_of_Sub_Matrix_of_A = inv(Sub_Matrix_of_A)

% 06. Defining the Generalized Inverse Matrix of A
Inverse_of_Sub_Matrix_of_A(4, 5) = 0;
Generalized_Inverse_Matrix_of_A = Inverse_of_Sub_Matrix_of_A

% 07. Check the Accuracy of Generalized Inverse Matrix of A
Accuracy_of_Generalized_Inverse_Matrix_of_A = A * Generalized_Inverse_Matrix_of_A * A

####### Calculated generalized inverse matrix matches expected matrix.

### Question 03

% 08. Defining the Matrix b
b = [1;
     2;
     1;
     2;
     2]

% 09. Finding a Particular Solution to Ay = b
y = Generalized_Inverse_Matrix_of_A * b

% 10. Check the Accuracy of y
Accuracy_of_Y = A * y

####### A × y is not equal to b.
####### Since b is not in column space of A, the system is inconsistent.
####### Thus G x b is not a particular solution for y.

### Question 04

% 11. Defining the Matrix B

B = [10, 10;
     -1,  7;
      5,  5;
     -2, 14]

% 12. Finding the Singular Value Decomposition. [B = U * S * V]
[u, s, v] = svd(B)

### Question 05

% 13. Defining the Matrix C
C = u * s * transpose(v)

% 14. Finding the Singular Value Decomposition. [C' = U1 * S1 * V1]
[u1, s1, v1] = svd(transpose(B))

### Question 06

% 15. Finding the pseudoinverse of B
Pesudo_Inverse_of_B = pinv(B)

% 16. Defining the Matrix d
d = [ 7;
     -5;
      1;
      1]

% 17. Finding the Matrix x
x = Pesudo_Inverse_of_B * d

% 18. Check the Accuracy of x
Accuracy_of_x = B * x

####### pinv(B) * d gives least - squares solution.
####### Bx = d only if d in column space of B.

% 19. Find the Least Squares Solution
fprintf("The Least Square Solution : %.1f\n\n", ((1/2) * norm(B * x - d, 2) ^ 2)) % Solution = 14.6
