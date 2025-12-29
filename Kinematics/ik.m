function [t1, t2, t3] = ik(l1, l2, x, y, phi, elbow)
    %find corresponding motor rotations of each linkage
    % Calculate the angles using the inverse kinematics equations
    d = sqrt(x^2 + y^2);
    if d > (l1 + l2) || d < abs(l1 - l2)
        error('Target is unreachable');
    end
    
    ct2 = (x^2+y^2 - l1^2-l2^2)/(2*l1*l2);
    st2 = elbow*sqrt(1-ct2^2);

    t2 = atan(st2, ct2);

    k1 = l1 + l2*cos(t2);
    k2 = l2*sin(t2);

    t1 = atan2(y, x) - atan2(k2, k1);

    t3 = phi - t1 - t2;

end