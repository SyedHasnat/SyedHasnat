clc
clear all
close all
x=[56 60 65 73 78 84 89 95 98];
y=[1773 1699 1660 1651 1642 1634 1628 1603 1583];

y_mean=mean(y);
y_minus_y_mean=y-y_mean;
square_of_y_minus_y_mean=y_minus_y_mean.*y_minus_y_mean;

x_mean=mean(x);
x_minus_x_mean=x-x_mean;
square_of_x_minus_x_mean=x_minus_x_mean.*x_minus_x_mean;

x_minus_x_mean_p_y_minus_y_mean=x_minus_x_mean.*y_minus_y_mean;

sumision_square_of_x_minus_x_mean=sum(square_of_x_minus_x_mean);

sumision_x_minus_x_mean_p_y_minus_y_mean=sum(x_minus_x_mean_p_y_minus_y_mean);

b1=x_minus_x_mean_p_y_minus_y_mean/square_of_x_minus_x_mean

b0=y_mean-(x_mean*b1)

y_cap=b0-b1*x;

figure
ax1 = subplot(1,1,1);
scatter(ax1,x,y)
h1 = lsline(ax1);
h1.Color = 'r';
h1.LineWidth = 1.5;
grid on;
xlabel('x axis');
ylabel('y axis');
title('x vs y')