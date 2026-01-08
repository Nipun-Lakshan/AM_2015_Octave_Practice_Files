# Day 03 - Practice 01

history -c
clear all
close all
clc

V = [2 -8 6 0 -1]
# help norm - Command to get information on norm through Command Window

# One Norm
norm(V, 1) % norm(vector, dimension of Norm) # Sum of Magnititude of all components

# Second Norm
norm(V, 2) # Sqaure Root of Sum of Squares of the componenets

# Thirty Norm
norm(V, 3)

# Infinity Norm
norm(V, inf)

A = [1 -5 9 4; 0 11 1 -7; 2 1 0 3]

norm(A, 1) % Maximum of Column Sum

norm(A, inf) % Maximum Row Sum

norm(A, 2) % Maximum eigenvalue of A^T.A (A Transpose . A)
