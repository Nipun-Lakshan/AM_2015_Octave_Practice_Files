# Day 02 - Lab Sheet

history -c
clear all
close all
clc

% Augmented Matrix
C = [2 3 1 290; 1 2 2 270; 3 1 3 360]

% Row Operation 01
C(2,:) = -2*C(2,:) + C(1,:)

% Row Operation 02
C(3,:) = 3*C(1,:) - 2*C(3,:)

% Row Operation 03
C(3,:) = 7*C(2,:) + C(3,:)

% Row Operation 04
C(2,:) = -1*C(2,:)

% Row Operation 05
C(3,:) = -1*C(3,:)
