function P = ProjectionMatrix(R, Ct, f, px, py, mx, my, s)
% calculates the projection matrix given the internal and external
% camera parameters
%
% input:
% R 3x3 rotation matrix
% Ct 3x1 camera center in world coordinates
% f,px,py,mx,my,s scalars, the internal camera parameters
%
% output:
% P 3x4 projection matrix, normalized so its
% last element is 1

    % construct internal camera matrix K
    K = [f*mx   s       px*mx ;
         0      f*my    py*my ;
         0      0       1    ];
     
    % calculate rotation and translation matrix
    C = [R -R *Ct];
    
    % calculate projection matrix
    P = K * C;

    % normalize projection matrix
    P = P / P(3,4);
end
