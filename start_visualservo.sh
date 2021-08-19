#!/bin/bash

killprocess () {
    pid=$(ps -C $1 -o pid=)
    if [ "$pid" != "" ]; then
	kill -15 $pid
    fi
}

export LD_LIBRARY_PATH="/usr/local/lib:$LD_LIBRARY_PATH"
source /opt/ros/foxy/setup.bash
source ~/ros2_ws/install/local_setup.sh

cd ~/ros2_ws

killprocess visualservo

ros2 run visualservo visualservo  --ros-args --params-file ~/ros2_ws/src/VisualServoNode/visualservo/visualservo_config.yaml
