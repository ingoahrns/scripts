#!/bin/bash

killprocess () {
    pid=$(ps -C $1 -o pid=)
    if [ "$pid" != "" ]; then
	kill -15 $pid
    fi
}

export LD_LIBRARY_PATH="/usr/local/lib:$LD_LIBRARY_PATH"
source /opt/ros/foxy/setup.bash
source /home/pi/robot/install/local_setup.sh

cd /home/pi/robot

killprocess ds4drv
killprocess joystick

echo "Start joystick driver..."
#ds4drv --hidraw &
ds4drv &
echo "Start joystick node..."
ros2 run joystick joystick --ros-args --params-file /home/pi/robot/projects/JoystickNode/joystick/joystick.yaml
