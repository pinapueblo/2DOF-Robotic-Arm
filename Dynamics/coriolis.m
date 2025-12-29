function C = coriolis(q, qdot, params)

    %initialize parameters
    t2 = q(2);

    t1dot = qdot(1);
    t2dot = qdot(2);

    l1 = params.l1;
    l2 = params.l2;
    m2 = params.m2;

    c1 = -m2*l1*l2*sin(t2)*(2*t1dot*t2dot + t2dot^2);
    c2 = m2*l1*l2*t1dot^2*sin(t2);

    C = [c1; c2];
end
