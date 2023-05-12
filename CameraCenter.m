function Ct = CameraCenter(R)
    % calculates the camera center in world coordinates
    %
    % input:
    % R 3x3 rotation matrix
    %
    % output:
    % Ct 3x1 camera center in world coordinates

    % The position of the center of the camera in relation to the world
    % was calculated as follows:
    % Given the drawn matrix R, calculate the position from which the Z axis of the camera
    % will point exactly to the beginning of the world axes, and the distance of the center
    % of the camera from the beginning of the world will be exactly 25 units.
    Ct = (-25 *R(3,:))';
end