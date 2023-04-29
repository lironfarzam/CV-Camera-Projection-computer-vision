function R = RandomRotation()
    % generates a random rotation matrix
    %
    % output:
    % R 3x3 rotation matrix

    % random rotation matrix from World coordinates to camera, using the qr
    % decomposition
    [R, ~]= qr(rand(3));
end