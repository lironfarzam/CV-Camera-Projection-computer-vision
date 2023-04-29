function fig2(R,Ct,P,Q,colors)
    % open a new figure window to be in 2D
    % the figure is camera plane of the first figure
    % on the figer we represent the camera plane in 2D from point of view of the camera
    % and using P matrix we project the shapes to the camera plane and draw them in 2D
    figure(2); hold on; clf;
    axis equal
    hold on
    grid on
    for i = 1:3 % loop over each shape
        colors = {'b', 'm', 'c'}; % define colors for each shape
        shape = Q(:, (i-1)*9+1:i*9); % extract points for current shape
        color = colors{i}; % get color for current shape
        
        % shape is 4x9 matrix each column is a point in 3D space
        % we want to project the points to the camera plane
        % we do that by multiplying the points by the P matrix
        % the P matrix is 3x4 matrix
        % the result is 3x9 matrix each column is a point in 2D space
        % we devide the result by the last row to get the points in 2D
        shape2D = P * shape;
        shape2D = shape2D ./ shape2D(3,:);
        
        % draw the shapes
        plot(shape2D(1,:), shape2D(2,:), [color '.-'],'linewidth', 1.5);
    end

end
