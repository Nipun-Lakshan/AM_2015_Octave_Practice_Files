# Day 02

history -c
clear all
close all
clc

# C(2,:) = All elements in row 2 of matrix C
# 2 = Row index 2
# : = Colon means "all columns"

% Augmented Matrix
C = [2 3 1 1; 1 -1 2 -1; -1 1 1 2]

% Row Operation 01
C(2,:) = -2*C(2,:)+C(1,:)

% Row Operation 02
C(3,:) = 2*C(3,:)+C(1,:)

% Row Operation 03
C(3,:) = -1*C(3,:)+C(2,:)


