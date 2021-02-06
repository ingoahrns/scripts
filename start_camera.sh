#!/bin/bash

killprocess () {
    pid=$(ps -C $1 -o pid=)
    if [ "$pid" != "" ]; then
	kill -15 $pid
    fi
}

cd /home/pi/ros2_ws

killprocess raspicam

ros2 run raspicam raspicam __params:=/home/pi/ros2_ws/src/CameraNode/raspicam/raspicam.yaml
