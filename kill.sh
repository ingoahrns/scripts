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
killprocess iiwa
killprocess universalrobot
killprocess locarm	
killprocess fanuc
killprocess robosim
killprocess ximeacam
killprocess cvcam	
killprocess simcam
killprocess dist_sensor
killprocess simdist
killprocess codedmarker
killprocess arucomarker
killprocess holedetector
killprocess visualservo
killprocess vsgui













