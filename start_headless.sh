#!/bin/bash

# Start ROS2 Nodes
echo 'STARTING ROS2 - All ROS2 Nodes related to the SmallRobot Project'
echo '#################################################################'
echo ' '

/home/pi/robot/scripts/start_arduino.sh &
/home/pi/robot/scripts/start_joystick.sh &
/home/pi/robot/scripts/start_joyctrl.sh & 
/home/pi/robot/scripts/start_camera.sh &
/home/pi/robot/scripts/start_lidar.sh &
/home/pi/robot/scripts/start_balldetect.sh &
/home/pi/robot/scripts/start_robotcontrol.sh &
/home/pi/robot/scripts/start_navigation.sh &
