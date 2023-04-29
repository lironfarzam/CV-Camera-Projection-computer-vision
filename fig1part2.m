 function fig1part2(R,Ct,P,Q,colors)
    % draw the projection of the shapes on the camera plane usind PointFromPlaneLine3D function
    % input: R,Ct,P,Q
    % R: rotation matrix
    % Ct: camera center
    % P: projection matrix
    % Q: 3D points of the shapes
    % colors: colors of the shapes
    %
    % output: none

    
    plane_cam = [0,0,1,-10];
    %% for dibug: display the plane.
    % displaySurface(plane_cam);
    
    % % convert the plane from camera coordinate system to world coordinate system and normalize it.
    % plane_world = cameraToWorld(plane_cam, R, Ct, P)
    % plane_world = plane_world / plane_world(4)
    % %% for dibug: display the plane.
    % % displaySurface(plane_world);
    
    % Compute the direction vector of the camera plane.
    % the camera plane is defined by the camera center on the Z axis and the normal vector of the plane.
    vv = Ct - [0;0;0];
    normal_vec = vv / norm(vv);

    % calculate the fourth value of the plane vector.
    d = -dot(normal_vec, Ct + normal_vec * -10);

    % concatenate the normal vector and the fourth value to create the plane vector.
    plane_vec = [normal_vec; d]';
    plane_vec = plane_vec / plane_vec(4);
    %% for dibug: display the plane.
    % displaySurface(plane_vec);
    
    % P2 is the camera center.
    P2 = Ct';

    % plot on figure 1.
    figure(1); hold on;
   % temp_shape_lines while contains the lines from the shapes to the camera center.
    temp_shape_lines = [];

    % draw the shapes.
    for i = 1:3 % loop over each shape.
        shape = Q(:, (i-1)*9+1:i*9); % extract points for current shape.
        color = colors{i}; % get color for current shape.
        
        for j =1:9 % loop over each point in the shape.
            % project the point to the camera plan.
            P1 = shape(:,j);
            P1 = P1(1:3)';
            
            % calculate the direction vector of the line passing through P1 and P2.
            V1 = P1 - P2 ;

            % find the intersection point of the line and the plane.
            [Parallel, q] = PointFromPlaneLine3D(plane_vec, P2, V1);

            %% plot the line and the intersection point.
            % plot3([P1(1) P2(1)], [P1(2) P2(2)], [P1(3) P2(3)], [color '.-'], 'LineWidth', 0.5);

            % add the line from P1 to P2 to temp_shape_lines.
            temp_shape_lines = [temp_shape_lines; P1 P2 i];
            

            % plot the intersection point on the camera plane.
            plot3(q(1), q(2), q(3), [color '.-'], 'MarkerSize', 10);
        end
        
%          plot3(shape(1,:), shape(2,:), shape(3,:), [color '.-'],'linewidth', 2); % plot points and lines
    end

    % wait for the user to press a key.
    pause;
    % draw the lines from the shapes to the camera center.
    for i = 1:size(temp_shape_lines,1)
        P1 = temp_shape_lines(i,1:3);
        P2 = temp_shape_lines(i,4:6);
        color = colors{temp_shape_lines(i,7)};
        plot3([P1(1) P2(1)], [P1(2) P2(2)], [P1(3) P2(3)], [color '.-'], 'LineWidth', 0.5);
    end


end

    
    