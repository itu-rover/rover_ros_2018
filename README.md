
Copyrighted by Vatan Aksoy Tezer, Clearpath family and ITU Rover Team. 2017-2018

This code uses husky's control.launch files. Therefore first you need to build husky-ros package.,
For building this package creat a folder in home rep. and copy the src file in it. 
Open a terminal write cd [FOLDNAME] , write catkin_make. It should build the ros package.

For starting Rviz simulation 
- roslaunch rover_base init_rover.launch

For moving around
- roslaunch rover_navigation move_base.launch

For autonomous mission
- roslaunch rover_send_point autonomous.launch

