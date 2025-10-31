function [x, y] = twoDOFarm(d1, d2, theta1, theta2)

%initialize output based on parameters
x = d1*cos(theta1) + d2*cos(theta1+theta2);
y = d1*sin(theta1) + d2*sin(theta1+theta2);

end