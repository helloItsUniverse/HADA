clear all; close all; clc;

% Example

%    plot_with_index( x, y, color_and_style, line_width, marker_size )

%    color_and_style : (Example) 'r*-' or 'b--o' or else
%    line_width      : 1 is recommended
%    marker_size     : 7 or larger is recommended


interval = 0.04*pi;
x = 0 : interval : 2*pi;


% Test 1 : figure name is integer
y1 = sin(x);
y2 = cos(x);
y3 = sin(2*x);

figure(21)
plot_with_index(x, y1, 'r--*', 1, 7);
hold on;
plot_with_index(x, y2, 'b-.', 1, 7);
hold on;
plot_with_index(x, y3, 'k--o', 1, 7);

legend('sin x', 'cos x', 'sin 2x');
xlabel('x data')
ylabel('y data')
xlim([0 2*pi])
ylim([-1.2 1.2])
title('test 1')


% Test 2 : figure name is char
y4 = sin(2*x);
y5 = cos(2*x);
y6 = sin(x);

figure('Name','Test : Sinusoidal','NumberTitle','off');
plot_with_index(x, y4, 'g--*', 1, 7);
hold on;
plot_with_index(x, y5, 'm-.', 1, 7);
hold on;
plot_with_index(x, y6, 'b--o', 1, 7);

legend('sin 2x', 'cos 2x', 'sin x');
xlabel('x data')
ylabel('y data')
xlim([0 2*pi])
ylim([-1.2 1.2])
title('test 2')



%% TEST when length of x, y data mismatches

clear all; close all; clc;

interval = 0.02*pi;

x7 = 0 : interval : 2*pi; % legnth of x7 is 101
y7 = cos(x7);             % legnth of y7 is 101
y7(1) = [];               % legnth of y7 becomes 100

plot_with_index(x7, y7, 'r--*', 1, 10);

% This will display ERROR message only. no figure window.