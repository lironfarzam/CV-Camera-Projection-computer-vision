function main
    
    R = RandomRotation();
    Ct = CameraCenter(R);
    [f, px, py, mx, my, s] = GetInternalParameters();
    P = ProjectionMatrix(R, Ct, f, px, py, mx, my, s);
    Q = GetShape();
    colors = {'b', 'm', 'c'}; % define colors for each shape

    fig1(R,Ct,P,Q,colors)
    % wait for enter to continue to next figure
    pause
    fig2(R,Ct,P,Q,colors)
    % wait for enter to continue to next figure
    pause
    fig1part2(R,Ct,P,Q,colors)
    
end

