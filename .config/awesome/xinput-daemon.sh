#!/bin/sh

apply_settings () {

  sleep 2
  xinput set-prop pointer:"Synaptics TM3276-022" "Device Enabled" 0
  xinput set-prop pointer:"G2Touch Multi-Touch by G2TSP" "Device Enabled" 0
  xinput set-prop pointer:"ELECOM ELECOM TrackBall Mouse" "libinput Accel Speed" 0.300000
  xinput set-prop pointer:"TPPS/2 IBM TrackPoint" "libinput Scrolling Pixel Distance" 10
  xinput set-prop pointer:"TPPS/2 IBM TrackPoint" "libinput Accel Speed" 1.000000
}

apply_settings

while true; do state=$(lsusb) && sleep 2 && [ "$state" != "$(lsusb)" ] && apply_settings; done
