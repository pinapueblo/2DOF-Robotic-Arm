function simulate_arm()

    clc; clear; close all;
    
    %% ---- Robot Parameters ----
    params.l1 = 0.5;
    params.l2 = 0.4;
    
    params.m1 = 1.0;
    params.m2 = 0.8;
    
    params.I1 = 0.02;
    params.I2 = 0.01;
    
    params.lc1 = params.l1;     % simple lumped-mass model
    params.lc2 = params.l2;
    params.g   = 9.81;
    
    %% ---- Simulation Settings ----
    dt = 0.001;
    T  = 5;
    time = 0:dt:T;
    
    q    = [0; 0];
    qdot = [0; 0];
    
    %% ---- Desired State ----
    qd      = [pi/4; pi/6];
    qdotd  = [0; 0];
    qddotd = [0; 0];
    
    %% ---- Control Gains ----
    Kp = diag([100, 100]);
    Kd = diag([20, 20]);
    
    figure;
    
    for k = 1:length(time)
    
        % ----- Controller -----
        tau = computed_torque(q, qdot, qd, qdotd,qddotd, Kp, Kd, params);
        % tau = pd_control(q, qdot, qd, qdotd, Kp, Kd);   % try this too
    
        % ----- Dynamics -----
        qdd = dynamics(q, qdot, tau, params);
    
        % ----- Integrate -----
        qdot = qdot+qdd*dt;
        q = q+qdot*dt;
    
        % ----- Animate -----
        animate_arm(q, params);
        drawnow;
    
    end
end
