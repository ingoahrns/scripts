#!/bin/bash

killprocess () {
    pid=$(ps -C $1 -o pid=)
    if [ "$pid" != "" ]; then
	kill -15 $pid
    fi
}

cd /home/pi/ros2_ws

killprocess joyctrl

ros2 run joyctrl joyctrl __params:=/home/pi/ros2_ws/src/JoyControlNode/joyctrl/joyctrl.yaml
