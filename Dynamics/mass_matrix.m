function M = mass_matrix(q, params)

    t2 = q(2);

    %initialize parameters
    l1 = params.l1;
    l2 = params.l2;
    m1 = params.m1;
    m2 = params.m2;
    I1 = params.I1;
    I2 = params.I2;

    %compute mass matrix
    m11 = (m1+m2)*l1^2 + m2*l2^2 + 2*m2*l1*l2*cos(t2) + I1 + I2;
    m12 = m2*l2^2 + m2*l1*l2*cos(t2) + I2;
    m21 = m12;
    m22 = m2*l2^2 + I2;
    M = [m11, m12; m21, m22];
end