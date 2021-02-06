#!/bin/bash

killprocess () {
    pid=$(ps -C $1 -o pid=)
    if [ "$pid" != "" ]; then
	kill -15 $pid
    fi
}

cd /home/pi/ros2_ws

killprocess joystick

ros2 run joystick joystick __params:=/home/pi/ros2_ws/src/JoystickNode/joystick/joystick.yaml
