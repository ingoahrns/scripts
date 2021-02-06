#!/bin/bash

killprocess () {
    pid=$(ps -C $1 -o pid=)
    if [ "$pid" != "" ]; then
	kill -15 $pid
    fi
}

slayprocess () {
    pid=$(ps -C $1 -o pid=)
    if [ "$pid" != "" ]; then
	kill -9 $pid
    fi
}

# Kill ROS2 Nodes
killprocess arduino		
killprocess raspicam	
killprocess joystick	
killprocess joyctrl	
killprocess rplidar_node	
killprocess balldetect	












