#!/bin/bash

killprocess () {
    pid=$(ps -C $1 -o pid=)
    if [ "$pid" != "" ]; then
	kill -15 $pid
    fi
}

cd /home/pi/ros2_ws

killprocess arduino

ros2 run arduino arduino __params:=/home/pi/ros2_ws/src/ArduinoNode/arduino/arduino.yaml 

