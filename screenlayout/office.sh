#!/bin/sh
xrandr \
    --output VIRTUAL1 --off \
    --output eDP1 --primary --mode 1920x1080 --pos 0x1937 --rotate normal \
    --output DP1 --mode 3840x2160 --pos 1920x0 --rotate left \
    --output DP2-1 --off \
    --output DP2-2 --mode 1920x1200 --pos 0x737 --rotate normal \
    --output DP2-3 --off \
    --output HDMI2 --off \
    --output HDMI1 --off \
    --output VGA1 --off \
    --output DP2 --off
