### Camera Projection Program
## Description
This Matlab program generates a 3D shape, places a camera in a random location and orientation, and projects the shape onto the camera's sensor surface. The camera's sensor surface is represented as a red square in the camera's coordinate system. The program outputs the image of the shape as seen by the camera.

## Usage
Run the program by executing the camera.m file in Matlab.
The program will randomly generate a rotation matrix R and calculate the position of the camera so that it is 25 units away from the center of the world.
The program will set the internal camera variables and calculate the projection matrix P.
A three-dimensional shape Q will be created and broadcasted to the world.
The program will display the world and camera coordinate systems, as well as the camera's sensor surface as a red square in the camera's coordinate system.
The program will find the position of the projection of the shape on the camera and project the shape onto the camera's sensor surface.
The program will output the image of the shape as seen by the camera.
Press Enter to continue to the next stage.
Additional Information
The program waits for the user to press Enter between stages to allow for easier visualization of the output at each stage.
The main file for the program is camera.m.

## Author Information
This program was written by Liron Parzam, a master's student in computer science at Hadassah College, Jerusalem.
contact information:
Email: lironfa@edu.hac.ac.il

