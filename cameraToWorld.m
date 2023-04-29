function plane_world = cameraToWorld(plane_cam, R, Ct, P)
    % Convert plane from camera to world coordinates
    % Inputs:
    % - R: 3x3 rotation matrix
    % - Ct: 3x1 camera center
    % - P: 3x4 projection matrix
    % - plane_cam: 1x4 vector representing a plane in camera coordinates
    % Outputs:
    % - plane_world: 1x4 vector representing the same plane in world coordinates
    
    surface_cam = plane_cam;
    
    % Compute transformation matrix from camera to world coordinates
    M = [R', -R' * Ct; 0, 0, 0, 1];
    
    % Convert surface to world coordinates
    plane_world = (inv(M) * surface_cam')';
    

end

