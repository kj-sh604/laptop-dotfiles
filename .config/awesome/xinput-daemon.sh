#!/bin/sh

apply_settings () {

  sleep 2
  xinput set-prop pointer:"Synaptics TM3276-022" "Device Enabled" 0
  xinput set-prop pointer:"G2Touch Multi-Touch by G2TSP" "Device Enabled" 0
  xinput set-prop pointer:"ELECOM ELECOM TrackBall Mouse" "libinput Accel Speed" 0.300000

  ## evdev Trackpoint settings when not using X11 Option "Resolution" for pointer speed
  xinput set-prop pointer:"TPPS/2 IBM TrackPoint" "Device Accel Profile" 4
  xinput set-prop pointer:"TPPS/2 IBM TrackPoint" "Device Accel Constant Deceleration" 0.450000

  ## libinput Trackpoint Settings
  # xinput set-prop pointer:"TPPS/2 IBM TrackPoint" "libinput Scrolling Pixel Distance" 10
  # xinput set-prop pointer:"TPPS/2 IBM TrackPoint" "libinput Accel Speed" 0.800000
}

apply_settings

while true; do state=$(lsusb) && sleep 2 && [ "$state" != "$(lsusb)" ] && apply_settings; done
