function qdd = dynamics(q, qdot, tau, params)
    M = mass_matrix(q, params);
    C = coriolis(q, qdot, params);
    G = gravity(q, params);

    qdd = M \ (tau - C - G);

end