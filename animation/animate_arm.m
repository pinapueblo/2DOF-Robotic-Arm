function animate_arm(q, params)

    l1 = params.l1;
    l2 = params.l2;
    
    t1 = q(1);
    t2 = q(2);
    
    x0 = 0; y0 = 0;
    
    x1 = l1*cos(t1);
    y1 = l1*sin(t1);
    
    x2 = x1 + l2*cos(t1+t2);
    y2 = y1 + l2*sin(t1+t2);
    
    plot([x0 x1 x2], [y0 y1 y2], 'o-', 'LineWidth', 3);
    axis equal;
    xlim([-1 1]); ylim([-1 1]);
    grid on;

end
