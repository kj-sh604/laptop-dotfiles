#!/bin/sh
LAPTOP_SCREEN="eDP1"

# disable all connected screens except for the laptop screen
for SCREEN in $(xrandr | grep "connected" | awk '{ print$1 }' | grep -v "$LAPTOP_SCREEN"); do
    xrandr --output "$SCREEN" --off
done

# set the laptop screen as primary and adjust its position
xrandr --output "$LAPTOP_SCREEN" --primary --auto --pos 0x0 --rotate normal

# reset any panning settings that might have been applied to the laptop screen
xrandr --output "$LAPTOP_SCREEN" --panning 0x0

# if above does not work run the following command manually:
# xrandr --output eDP1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output DP1 --off --output DP1-1 --off --output DP1-2 --off --output DP1-3 --off --output DP2 --off --output DP2-1 --off --output DP2-2 --off --output DP2-3 --off --output HDMI1 --off --output HDMI2 --off --output VIRTUAL1 --off
