# Week 10 - Day 07

% Clear Command History
history -c

% Clear All Variables
clear all

% Close All Open Windows
close all

% Clear The Command Window
clc

# Note : Taylor Expansions

% Load symbolic package
pkg load symbolic

% Taylor Expansions
syms x
taylor(exp(x), x, 1, 'order', 10)
