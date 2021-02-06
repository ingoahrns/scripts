#!/bin/bash

# Start ROS2 Nodes

echo 'STARTING ROS2 - All ROS2 Nodes related to the SmallRobot Project'
echo '#################################################################'
echo ' '

kill.sh

gnome-terminal --working-directory=/home/pi --window-with-profile=ros --hide-menubar --title="Arduino Controller" --geometry=73x28+0+20 -- ~/scripts/start_arduino.sh 

gnome-terminal --working-directory=/home/pi --window-with-profile=ros --hide-menubar --title="Joystick Controller" --geometry=73x28+600+20 -- ~/scripts/start_joystick.sh

gnome-terminal --working-directory=/home/pi --window-with-profile=ros --hide-menubar --title="Robot Joystick Control" --geometry=73x28+1200+20 -- ~/scripts/start_joyctrl.sh 

gnome-terminal --working-directory=/home/pi --window-with-profile=ros --hide-menubar --title="Camera Control" --geometry=73x28+0+520 -- ~/scripts/start_camera.sh

gnome-terminal --working-directory=/home/pi --window-with-profile=ros --hide-menubar --title="LIDAR Control" --geometry=73x28+600+520 -- ~/scripts/start_lidar.sh 

gnome-terminal --working-directory=/home/pi --window-with-profile=ros --hide-menubar --title="Ball Detector" --geometry=73x28+1200+520 -- ~/scripts/start_balldetect.sh 

