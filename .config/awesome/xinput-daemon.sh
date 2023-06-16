#!/bin/sh

# Function to apply the desired settings
apply_settings() {
    sleep 2
    xinput set-prop pointer:"Synaptics TM3276-022" "Device Enabled" 0
    xinput set-prop pointer:"G2Touch Multi-Touch by G2TSP" "Device Enabled" 0
    xinput set-prop pointer:"ELECOM ELECOM TrackBall Mouse" "libinput Accel Speed" 0.300000
    xinput set-prop pointer:"TPPS/2 IBM TrackPoint" "libinput Scrolling Pixel Distance" 10
    xinput set-prop pointer:"TPPS/2 IBM TrackPoint" "libinput Accel Speed" 0.800000
    
    ### Alternate TrackPoint settings using evdev ###
    # xinput set-prop pointer:"TPPS/2 IBM TrackPoint" "Device Accel Profile" 2
    # xinput set-prop pointer:"TPPS/2 IBM TrackPoint" "Device Accel Constant Deceleration" 0.450000
}

# Initial application of settings
apply_settings

# Continuously monitor for changes in USB devices and reapply settings if any change is detected
while true; do
    # Get the current state of USB devices
    state=$(lsusb)
    
    # Wait for 2 seconds
    sleep 2
    
    # Compare the current state with the new state of USB devices
    # If any change is detected, reapply the settings
    if [ "$state" != "$(lsusb)" ]; then
    	apply_settings
    fi
done
