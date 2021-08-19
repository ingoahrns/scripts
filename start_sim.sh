#!/bin/bash

# Start ROS2 Nodes

echo 'STARTING ROS2 - All ROS2 Nodes related to the VisualServoing Project'
echo '####################################################################'
echo ' '

kill.sh

gnome-terminal --working-directory=/home/pi --window-with-profile=ros --hide-menubar --title="Robot Simulator" --geometry=73x28+0+20 -- ~/ros2_ws/scripts/start_robosim.sh 

sleep 17

gnome-terminal --working-directory=/home/pi --window-with-profile=ros --hide-menubar --title="Camera Simulator" --geometry=73x28+600+20 -- ~/ros2_ws/scripts/start_simcam.sh

# gnome-terminal --working-directory=/home/pi --window-with-profile=ros --hide-menubar --title="Distance Sensor Simulator" --geometry=73x28+1200+20 -- ~/ros2_ws/scripts/start_simdist.sh 

gnome-terminal --working-directory=/home/pi --window-with-profile=ros --hide-menubar --title="Ring Coded Marker Detector" --geometry=73x28+0+520 -- ~/ros2_ws/scripts/start_codedmarker.sh

gnome-terminal --working-directory=/home/pi --window-with-profile=ros --hide-menubar --title="Visual Servoing" --geometry=73x28+1200+520 -- ~/ros2_ws/scripts/start_visualservo.sh 


