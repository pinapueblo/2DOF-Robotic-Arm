function G = gravity(q, params)
    %initialize parameters

    t1 = q(1);
    t2 = q(2);
    
    %for future reference, these values can be changed to more
    %realistically represent the center of mass of the linkages
    l1 = params.l1;
    l2 = params.l2;

    m1 = params.m1;
    m2 = params.m2;
    g = params.g;

    %compute potential energy vector
    g1 = (m1*l1 + m2*l1)*g*cos(t1) + m2*l2*g*cos(t1+t2);
    g2 = m2*l2*g*cos(t1+t2);

    G = [g1; g2];

end