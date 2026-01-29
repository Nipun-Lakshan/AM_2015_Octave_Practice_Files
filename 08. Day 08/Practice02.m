# Week 10 - Day 08

% Clear Command History
history -c

% Clear All Variables
clear all

% Close All Open Windows
close all

% Clear The Command Window
clc

### L Systems

% Define the Initial Word
W = "F++F++F"
fprintf("\n")

% Define the Initial Coordinate
initial_state = [0, 0, 0]

% Define the Length of the Word
n = length(W)

% Define Step Size
step_size = 1;

% Define Turn Angle
turn_angle = 60;  % in degrees

% Initialize Turtle State
x = initial_state(1);
y = initial_state(2);
angle = initial_state(3);

% Display Initial State
fprintf('\nInitial State  : X = %.1f, Y = %.1f, Angle = %.1f°\n', x, y, angle);
fprintf('Processing Word: %s\n\n', W);

% Store the Path for Plotting
path_x = [x];
path_y = [y];

% Define a For - Loop to Read the Word from Left to Right
for i = 1:n

    % Define the Letter of Reading in the Word
    symbol = W(i);

    % Define a Switch Statement
    switch symbol

      % Case 01
      case 'F'

            % Move Forward : Update Position Based on Current Angle
            x_new = x + step_size * cosd(angle);
            y_new = y + step_size * sind(angle);

            % Display Movement
            fprintf('New State      : X = %.1f, Y = %.1f, Angle = %.1f°\n',x_new, y_new, angle);

            % Update position
            x = x_new;
            y = y_new;

            % Store for Plotting
            path_x = [path_x, x];
            path_y = [path_y, y];

      % Case 02
      case '+'

            % Turn Left (Counter - Clockwise)
            angle_old = angle;
            angle = (angle + turn_angle);
            fprintf('New State      : X = %.1f, Y = %.1f, Angle = %.1f°\n',x, y, angle);

       % Case 03
       case '-'

            % Turn Right (Clockwise)
            angle_old = angle;
            angle = (angle - turn_angle);
            fprintf('New State      : X = %.1f, Y = %.1f, Angle = %.1f°\n',x, y, angle);

        otherwise
            fprintf('Unknown symbol: %c\n', symbol);
    end
end

% Defining a If Case
if angle = 360;
  angle = 0
end

% Display final state
fprintf('\nFinal State: X = %.1f, Y = %.1f, angle = %.1f°\n\n', x, y, angle);

% Plot the Turtle Path
figure
plot(path_x, path_y, 'x-')
grid on
title("Turtle Graph")
