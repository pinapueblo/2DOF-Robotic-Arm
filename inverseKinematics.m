function [theta1, theta2] = inverseKinematics(x,y, d1, d2)

%calculate theta2 based on input arguments
cos_theta2 = (x^2 + y^2 - d1^2 - d2^2) / (2*d1*d2);
theta2 = acos(cos_theta2);

%find theta1 based on theta2
theta1 = atan2(y,x) - atan2(d2*sin(theta2), d1 + d2*cos(theta2));

end