function displaySurface(line_vec)
    % This function displays a surface in 3D space given a line vector
    % The line vector is in the form [a b c d] where ax + by + cz + d = 0
    % The surface is displayed on top of the existing figure
    %
    % Inputs:
    %   line_vec - The line vector in the form [a b c d]
    %
    % Outputs:   None


    % Generate a meshgrid of points for the x and y dimensions
    [X, Y] = meshgrid(-10:0.5:10, -10:0.5:10);
    % Calculate z from the plane equation: ax + by + cz + d = 0
    Z = (-line_vec(1)*X - line_vec(2)*Y - line_vec(4))/line_vec(3);
    % Plot the surface on top of the existing figure
    figure(1)
    surf(X,Y,Z)
    % Set the properties of the surface
    shading interp
    colormap cool
    alpha 0.8
end
