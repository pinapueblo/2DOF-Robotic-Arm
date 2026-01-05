function tau = pd_control(q, qdot, qd, qdotd, Kp, Kd)
    tau = Kp*(qd - q) + Kd*(qdotd - qdot);
end