function [f, px, py, mx, my, s] = GetInternalParameters
   % intrinsic camera parameters, all dimension are in centimeters
   
   f = 10;  % distance between camera plane and camera center
   
   % the principle axis is intersecting the camera plane 2 cm up and 2 cm right
   % of the lower left point
   px = 20;
   py = 20;
   
   % the number of pixels per cm:
   mx = 100;
   my = 100;
   
   % the skew
   s = 0;
  
end