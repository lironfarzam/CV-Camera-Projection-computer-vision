function fig1(R,Ct,P,Q,colors)


    figure(1); clf
    axis([-50 50 -50 50 -50 50]);
    % axis equal
    hold on
    grid on
    cameratoolbar('ResetCameraAndSceneLight')
    cameratoolbar('Show')
    cameratoolbar('SetMode','orbit')
    cameratoolbar('SetCoordSys','z')

    % drow the world axes
    plot3([0 20],[0 0],[0 0],'r','linewidth',2)
    plot3([0 0],[0 20],[0 0],'g','linewidth',2)
    plot3([0 0],[0 0],[0 20],'b','linewidth',2)
    % add labels to the axes
    text(20,0,0,'X')
    text(0,20,0,'Y')
    text(0,0,20,'Z')
    text(0,0,0,'W')
    
    % draw the camera center
    plot3(Ct(1), Ct(2), Ct(3), 'k.', 'markersize', 20)
    % draw the camera axes
    plot3([Ct(1) Ct(1)+20*R(1,1)],[Ct(2) Ct(2)+20*R(2,1)],[Ct(3) Ct(3)+20*R(3,1)],'r','linewidth',2)
    plot3([Ct(1) Ct(1)+20*R(1,2)],[Ct(2) Ct(2)+20*R(2,2)],[Ct(3) Ct(3)+20*R(3,2)],'g','linewidth',2)
    plot3([Ct(1) Ct(1)+20*R(1,3)],[Ct(2) Ct(2)+20*R(2,3)],[Ct(3) Ct(3)+20*R(3,3)],'b','linewidth',2)
    % add the camera labels to the axes ends
    text(Ct(1)+20*R(1,1), Ct(2)+20*R(2,1), Ct(3)+20*R(3,1), 'X')
    text(Ct(1)+20*R(1,2), Ct(2)+20*R(2,2), Ct(3)+20*R(3,2), 'Y')
    text(Ct(1)+20*R(1,3), Ct(2)+20*R(2,3), Ct(3)+20*R(3,3), 'Z')
    % add the center of camera label
    text(Ct(1), Ct(2), Ct(3), 'C')
    % %add the camera center coordinates
    % text(Ct(1),Ct(2),Ct(3),['C = [' num2str(Ct(1)) ',' num2str(Ct(2)) ',' num2str(Ct(3)) ']'])
    
    % add the camera plane to the world 10 units from cenre as a red square
    % calculate the plane center
    C = Ct + 10 * R(:,3);
    % calculate the plane corners
    P1 = C + 10 * R(:,1) + 10 * R(:,2);
    P2 = C + 10 * R(:,1) - 10 * R(:,2);
    P3 = C - 10 * R(:,1) - 10 * R(:,2);
    P4 = C - 10 * R(:,1) + 10 * R(:,2);
    % draw the plane
    plot3([P1(1) P2(1) P3(1) P4(1) P1(1)], [P1(2) P2(2) P3(2) P4(2) P1(2)], [P1(3) P2(3) P3(3) P4(3) P1(3)], 'r', 'linewidth', 2)

    % wait for the user to press a key.
    pause;
    % draw the shapes
    for i = 1:3 % loop over each shape
        shape = Q(:, (i-1)*9+1:i*9); % extract points for current shape
        color = colors{i}; % get color for current shape
        plot3(shape(1,:), shape(2,:), shape(3,:), [color '.-'],'linewidth', 2); % plot points and lines
    end

end
