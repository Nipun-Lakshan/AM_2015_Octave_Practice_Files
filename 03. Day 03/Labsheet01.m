# Day 03 - Labsheet 01

clc
clear all

# Question 01
A = [3; -4;  0; 3/2];
B = [2;  1; -3; 4];
C = [1;  0;  0; 1];
D = [1;  1;  1; 1];

norm(A, 1);
norm(B, 1);
norm(C, 1);
norm(D, 1);

norm(A, 2);
norm(B, 2);
norm(C, 2);
norm(D, 2);

norm(A, inf);
norm(B, inf);
norm(C, inf);
norm(D, inf);

# Additional Stuff
Z = [1 2 3 4 5];
isvector(Z);
ismatrix(Z);
norm(Z, 1);

# Question 02
A  = [4 -1 7; -1 4 0; -7 0 4]
X1 = [1, 2, 3]'
X2 = [1, 0, 0]'
X3 = [1, 1, 1]'

fprintf("\n")
norm(A, 1)
norm(A * X1, 1) / norm(X1)
norm(A * X2, 1) / norm(X2)
norm(A * X3, 1) / norm(X3)
fprintf("\n")

fprintf("\n")
norm(A, 2)
norm(A * X1, 2) / norm(X1)
norm(A * X2, 2) / norm(X2)
norm(A * X3, 2) / norm(X3)
fprintf("\n")

fprintf("\n")
norm(A, 'fro')
norm(A * X1, 2) / norm(X1)
norm(A * X2, 2) / norm(X2)
norm(A * X3, 2) / norm(X3)
fprintf("\n")

fprintf("\n")
norm(A, inf)
norm(A * X1, inf) / norm(X1)
norm(A * X2, inf) / norm(X2)
norm(A * X3, inf) / norm(X3)
fprintf("\n")

# Additional Stuff
norm(A, inf);
norm(A, 'fro');
norm(A * X1, 2);
norm(X2, 1);

# Question 03
A = [1 0.5 0 0 0 0 0; 0 1 0.5 0 0 0 0; 0 0 1 0.5 0 0 0; 0 0 0 1 0.5 0 0; 0 0 0 0 1 0.5 0; 0 0 0 0 0 1 0.5; 0 0 0 0 0 0 1]
[V, D] = eig(A)
fprintf("\n")

X = [1;1;1;1;1;1;1]
norm(X, 2)
norm(A * X, 2)
(sqrt(max(eig(A' * A)))) * norm(X, 2)
fprintf("\n")

norm(A * X, 2) <= (norm(A, 2) * norm(X, 2)) # True
fprintf("\n")

SpectalNorm = (sqrt(max(eig(A' * A))))
NormA2 = norm(A, 2)
SpectalNorm == norm(A, 2)

