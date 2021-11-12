#!/bin/sh

xinput set-prop "SynPS/2 Synaptics TouchPad" "Synaptics Circular Scrolling" 0
xinput set-prop "SynPS/2 Synaptics TouchPad" "Synaptics Edge Scrolling" 0, 0, 0
xinput set-prop "SynPS/2 Synaptics TouchPad" "Device Accel Profile" 1
xinput set-prop "SynPS/2 Synaptics TouchPad" "Device Accel Constant Deceleration" 2.000000
xinput set-prop pointer:"ELECOM ELECOM TrackBall Mouse" "libinput Accel Speed" 0.300000
xinput set-prop pointer:"ELECOM ELECOM TrackBall Mouse" "libinput Scrolling Pixel Distance" 50
xinput set-prop pointer:"TPPS/2 IBM TrackPoint" "libinput Scrolling Pixel Distance" 10

while true; do state=$(lsusb) && sleep 2 && [ "$state" != "$(lsusb)" ] && /home/kylert/.config/awesome/xinput.sh; done
