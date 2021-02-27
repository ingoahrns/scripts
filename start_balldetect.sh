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

killprocess balldetect

ros2 run balldetect balldetect --ros-args --params-file /home/pi/robot/projects/BallDetect/balldetect/balldetect.yaml

