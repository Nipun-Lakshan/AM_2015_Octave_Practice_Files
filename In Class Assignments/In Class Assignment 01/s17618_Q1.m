# Registration Number : 2023s20371
# Index Number        : s17618
# Question 01 - In Class Assignment 01

history -c
clear all
close all
clc

A = [1, 1;
     2, 1;
     3, 1;
     4, 1 ]

b = [6;
     5;
     7;
    10 ]

Least_Square = pinv(A) * b

predicted_pollution = A \ b

residual_vector = pinv(A)
norm(residual_vector)
