#!/bin/bash

killprocess () {
    pid=$(ps -C $1 -o pid=)
    if [ "$pid" != "" ]; then
	kill -15 $pid
    fi
}

cd /home/pi/ros2_ws

killprocess balldetect

ros2 run balldetect balldetect __params:=/home/pi/ros2_ws/src/BallDetect/balldetect/balldetect.yaml

