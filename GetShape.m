function Q = GetShape
   % define a 3D shape in homogeneous World coordinates
   % the shape Q is composed of 3 shapes, each with 9 points
   % so Q is [4x9 4x9 4x9] = [4x27]
   Qxy = [ ...
      [5;5;0;1] [5;7;0;1] [3;5;0;1] [5;5;0;1] ...
      [3;7;0;1] [5;7;0;1] [4;8;0;1] [3;7;0;1] [3;5;0;1]...
      ];
   
   Qxz = [ ...
      [5;0;5;1] [5;0;7;1] [3;0;5;1] [5;0;5;1] ...
      [3;0;7;1] [5;0;7;1] [4;0;8;1] [3;0;7;1] [3;0;5;1]...
      ];
   
   Qyz = [ ...
      [0;5;5;1] [0;5;7;1] [0;3;5;1] [0;5;5;1] ...
      [0;3;7;1] [0;5;7;1] [0;4;8;1] [0;3;7;1] [0;3;5;1]...
      ];
   
   Q = [Qxy Qxz Qyz];
end