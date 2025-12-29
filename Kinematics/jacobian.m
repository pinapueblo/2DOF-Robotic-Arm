function [xdot, ydot] = jacobian(l1, l2, t1, t2, t1dot, t2dot)
    %initialize the Jacobian matrix
    t12 = t1 + t2;
    %jacobian
    J = [-l1*sin(t1) - l2*sin(t12), -l2*sin(t12); l1*cos(t1) + l2*cos(t12), l2*cos(t12)];

    %joint space
    js = [t1dot; t2dot];

    %compute the joint velocity in the Cartesian space
    vel = J * js;
    xdot = vel(1);
    ydot = vel(2);
end