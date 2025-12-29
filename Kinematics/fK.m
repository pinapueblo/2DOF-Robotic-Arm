function [x, y, phi] = fK(l1, l2, t1, t2)
    %find position and orientation of end effector

    %define rotation matricies (assume all frames are defined CCW)
    R1 = [cos(t1), -sin(t1); sin(t1), cos(t1)];
    R12 = [cos(t1+t2), -sin(t1+t2); sin(t1+t2), cos(t1+t2)];
    
    d1 = [l1; 0];
    d2 = [l2; 0];
    % Calculate the position of the end effector
    p1 = R1 * d1;
    p2 = R12 * d2;
    endEffectorPos = p1 + p2;
    
    x = endEffectorPos(1);
    y = endEffectorPos(2);

    phi = t1 + t2;

end