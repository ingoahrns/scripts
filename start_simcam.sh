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

killprocess simcam

ros2 run simcam simcam --ros-args --params-file ~/ros2_ws/src/CameraNode/simcam/simcam.yaml
