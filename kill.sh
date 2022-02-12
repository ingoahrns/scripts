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
killprocess ds4drv
killprocess arduino		
killprocess simarduino		
killprocess raspicam	
killprocess simcam	
killprocess joystick	
killprocess pyjoy	
killprocess joyctrl	
killprocess rplidarNode
killprocess balldetect	
killprocess robotcontrol	
killprocess pyrobctrl	
killprocess navigation	
killprocess pynav	

killprocess simcam	
killprocess simlidar	












