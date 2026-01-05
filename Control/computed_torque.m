function tau = computed_torque(q, qdot, qd, qdotd,qddotd, Kp, Kd, params)
    M = mass_matrix(q, params);
    C = coriolis(q, qdot, params);
    G = gravity(q, params);

    %initialize error
    e = qd - q;
    edot = qdotd - qdot;

    tau = M*(qddotd + Kd*edot + Kp*e) + C + G;

end