##################################################
# Basic Commands To Write on a Top of The Script #
##################################################

# Clear Command History
history -c

# Clear all Variables, Functions and Compiled Codes
clear all

# Close All Open Figure Windows
close all

# Clear the Command Window
clc

######################
# Comments in Octave #
######################

% - Single Line Comment

%{
  Multi Line Comment
  Multi Line Comment
  Multi Line Comment
%}

# - Octave Specific Single Line Comment

############################
# Display a Text in Octave #
############################

# To Display Strings [Written in Double or Single Quotes]
disp('Hello World');
disp("I'm going to learn Octave");

##################
# Variable Types #
##################

# 01. Variable Type - Double
double = 3.84;

# 02. Variable Type - Character
string = "String";

# 03. Varible Type - Complex
z = 1 + 3i;

% Matrices, Vectors, Doubles and Chars are the most frequently used variable types.
% Complex, Symbolic, 16 - Bit Integer and 8 - Bit Integer are other variable types.

#############################
# Built - In Variable Names #
#############################

% Unassigned Computation
5 + 6;

% Display Imaginary Part of a Complex Number Calculations
disp(i);
disp(j);

% Stores the Value of Pi = 3.1415......
disp(pi);

% Stores the result of last unassigned value
disp(ans);

% Infinities
disp(Inf);
disp(-Inf);

% Not a Number (0/0)
disp(NaN);

###########
# Scalars #
###########

% 01. Assign a Value Explicitly
a = 10;

% 02. Assign a Value Explicitly
c = 1.3 * 45 - 2 * a;

###############
# Row Vectors #
###############

% 01. Space Separated Row Vectors
A = [1 2 3.2 4 6 5.4];

% 02. Comma Separated Row Vectors
B = [1, 2, 4, 7, 4.3, 1.1];

##################
# Column Vectors #
##################

% 01. Row Seperated By a Comma
C = [1; 2; 3.2; 4; 6; 5.4];

#######################
# Size() and Length() #
#######################

% 01. Size of Row Vectors
size(A);
size(B);

% 02. Length of Column Vectors
length(A);
length(B);

% 03. Size of Column Vectors
size(C);

% 04. Length of Row Vectors
length(C);

########
# Note #
########

% 01. Clear a specific variable or variables.
clear A B C

############
# Matrices #
############

% 01. 2 x 2 Matrix
a = [1 2; 3 4];

#########################
# Examples For Matrices #
#########################

a = [1 2];
b = [3 4];
c = [5; 6];
d = [a; b];
e = [d c];
f = [[e e]; [a b a]];

% Matrix of Strings and Print it
str = ["Hello, ", "I am ", "John"];
disp(str);

##########################
# Basic Scalar Functions #
##########################

% 01. Addition
a = (1 + 2i) + (2 + 5i);
disp(["ans = ", num2str(a)]); % ans = (3 + 7i)
fprintf("ans = %s\n", num2str(a));

% 02. Subtraction
b = (1 + 2i) - (2 + 5i);
disp(["ans = ", num2str(b)]); % ans = (-1 - 3i)
fprintf("ans = %s\n", num2str(b));

% 03. Multiplication
c = (1 + 2i) * (1 + 2i);
disp(num2str(c));

% 04. Division - Normal Case
d = 7/45;
disp(d); % 0.1556

% 05. Division - Infinity Case
e = 1/0;
disp(e); % Inf

% 06. Division - Undefined Case
f = 0/0;
disp(f); % NaN - Not a Number

% 07. Exponentiation - Normal Case
e = 4^2;
disp(e); % 16

% 08. Exponentiation with BODMAS
f = (3+4*1j)^2;
disp(f); % -7 + 24i

% 09. Complicated Expressions
g = ((2+3)*3)^0.1;
disp(g); % 1.3110

######################
# Built in Functions #
######################

sqrt(2);        % Square root of 2
log(2);         % Natural logarithm (base e) of 2
log10(2);       % Base-10 logarithm of 2
cos(1.2);       % Cosine of 1.2 radians
atan(-8);       % Arctangent (inverse tangent) of -8 (returns angle in radians)
exp(2+4*1i);    % Exponential function of complex number (e^(2+4i))
round(1.4);     % Round to nearest integer (1)
floor(3.3);     % Round down to nearest integer (3)
ceil(4.23);     % Round up to nearest integer (5)
angle(1i);      % Phase angle of complex number in radians (π/2 for 1i)
abs(1+1i);      % Magnitude (absolute value) of complex number √(1² + 1²) = √2

#############
# Transpose #
#############

A = [1 2 3; 4 5 6];
B = [1 + i; 2 - i; 5 + i;];

% 01. Transpose using Function.
transpose(A);
transpose(B);

% 02. Transpose using ' Symbol. [Transpose and Cojugate For Complex - Hermitian Matrix]
A';
B';

% 03. Transpose using .' Symbol. [Transpose and Only For All - Safest Method]
A.';

######################################
# Matrix Addition and Multiplication #
######################################

A = [1, 2, 3, 4, 5]; % Row Vectors
B = [5; 4; 3; 2; 1]; % Column Vectors

% 01. Row and Column Vector Addition
C = A + B; % Element wise perform. The new matrix size = row size * column;
% First Element in A will add to the elements in B and that column will First Column in
% New Matrix.

% 02. Tranpose rows to make size compatible
C = A.' + B;

% 03. Tranpose columns to make size compatible
C = B.' +  A;

% 04. Sum & Product of All Elements in Matrix A
S = sum(A);
P = prod(A);

% 05. Sum & Product of All Elements in Matrix B
S = sum(B);
P = prod(B);

% 06. Sum & Product of All Elements in 4 x 3 Matrix
A = [1 2 4; 4 5 6];

sum(A);
prod(A);

###########################
# Element Wise Operations #
###########################

t = [1 2 3];                % Create a row vector [1, 2, 3]
f = exp(t);                 % Compute exponential of each element: [e^1, e^2, e^3]

f = [exp(1) exp(2) exp(3)]; % Same as exp(t)

#######################################
# Elements Wise Operations - Examples #
#######################################

a = [1 2 3];
b = [4; 2; 1];

a.*b; % Has an Error [Multiply Rows or Columns to match the Dimensions]
a./b; % Has an Error [Multiply Rows or Columns to match the Dimensions]
a.^b; % Has an Error [Multiply Rows or Columns to match the Dimensions]

% Do transpose to avoid errors.
a.*b'; % Dimensions are match due to transpose.
a./b'; % Dimensions are match due to transpose.
a.^b'; % Dimensions are match due to transpose.

#######################
# Multiply By Inverse #
#######################

A = [1 2 3; 4 5 6; 5 5 5];
B = [6 8 9; 1 4 5; 9 9 9];

C = A / B;
D = A * inv(B); % A / B = A * Inv(B)

############################
# Automatic Initialization #
############################

% 01. Ones Vector
o = ones(1,10);     % Row Vector:   10 elements, all 1s
o = ones(5,1);      % Column Vector: 5 elements, all 1s

% 02. Zeros Vector
z = zeros(23, 1);    % Column vector: 23 elements, all 0s
z = zeros(1, 15);    % Row vector:    15 elements, all 0s

% 03. Random Vector
r = rand(1,45);     % Row vector:    45 random numbers (0 - 1)
r = rand(5,1);      % Column vector:  5 random numbers

% 04. NaN Vector
n = nan(1,69);      % Row vector: 69 NaN values (Uninitialized)

% 05. Linspace
a = linspace(0, 10, 5); # Start at 0 and ends at 10, 5 values. (Incluidng 0 and 10)

% 06. Colon Operator
b = 0:2:10;          # Start at 0, Increment by 2 and Ends at 10. [Increment can be decimal or negative]

% 07. Special Case
c = 1:5;              # If increment is not specified, Starts at 1 and ends at 5. [Default Increment is 1]

% 08. logspace()
logspace(10, 20);        % 50 points between 10^a and 10^b
logspace(10, 20, 100);   % n points between 10^a and 10^b
logspace(10, pi, 100);   % Points between 10^a and π (Special Case)

###################
# Vector Indexing #
###################

a = [13, 5, 9, 10];
n = length(a);

a(1);    % Returns: 13
a(2);    % Returns: 5
a(3);    % Returns: 9
a(4);    % Returns: 10
a(n);    % Returns n

###################
# Matrix Indexing #
###################

b = [1 2 3; 4 5 6];

% 01. Subscript Indexing

B = [b(1,1)  14   33;
     b(2,1)  9    8];

B(1,1);    % Row 1, Column 1
B(2,3);    % Row 2, Column 3
B(1,:);    % Entire Row 1
B(:,2);    % Entire Column 2

% 02. Linear Indexing (Column - Wise)

B = [b(1)  14   33;    % b(1) = B(1,1)
     b(2)  9    8];    % b(2) = B(2,1)

B(1);      % Same as B(1,1) = First element
B(2);      % Same as B(2,1) = Second element (down first column)
B(3);      % Same as B(1,2) = Third element (then next column)
B(4);      % Same as B(2,2) = Fourth element

###########
# Summary #
###########

% 01. Define a Matrix
A = [1, 2, 3; 8, 9, 4; 5, 9, 8];

% 02. Calling Matrices
A(3);       % Linear indexing: 3rd element (row 3, column 1) = 5
A([1, 4]);  % Linear indexing: 1st and 4th elements = [1, 8]
A(2, 2);    % Element at row 2, column 2 (value: 9)
A(2,:);     % Entire row 2 (all columns) → [8, 9, 4]
A(:,2);     % Entire column 2 (all rows) → [2; 9; 9]
A(9);       % 9th element using linear indexing (column-wise) → 8

% 03. Creating a Random Matrix
A = rand(5); % Creates 5 x 5 Random Matrix

########################
# Advanced Indexing 01 #
########################

% 01. Select Entire Row & Columns
C = [12, 5; -2, 13];

d = C(1,:); % Entire row 1    → [12, 5]
e = C(:,2); % Entire column 2 → [5; 13]

% 02. Modify Row & Columns
C(2,:) = [3, 6];   % Replace row 2 with [3, 6] / Result: C = [12, 5; 3, 6]

########################
# Advanced Indexing 02 #
########################

% 03. Find Minimum and Maximum Values
vec = [5, 3, 1, 9, 7];

[minVal, minInd] = min(vec); % minVal = 1, minInd = 3
[maxVal, maxInd] = max(vec); % maxVal = 9, maxInd = 4

% 04. Find() Function

ind = find(vec == 9); % Returns: 4
vec(ind) = 8;         % Change Value at Index 4

ind = find(vec > 2 & vec < 6);   % Returns: [1, 2] (values 5 and 3)
ind = find(vec >= 5 | vec == 1); % Returns: [1 3 4 5]

% 05. Logical Indexing
vec = [5, 3, 1, 9, 7];

% Direct modification without find()
vec(vec == 9) = 8;              % Change all 9's to 8's
vec(vec > 2 & vec < 6) = 10;    % Change values 3,5 to 10

% Multiple conditions
vec(vec > 5) = 0;               % Set all values >5 to 0

############
# Plotting #
############

% 01. Defining X Axis
x = linspace(0, 10, 200); # Starts from 0 and End from 10 Including 0 and 10. Make 200 Values with Equal Gaps Between Them.

% 02. Defining the Function
y=sin(x);

% 03. Plot the Function
plot(x,y);
