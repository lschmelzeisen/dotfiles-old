#!/bin/sh
xrandr \
    --output VIRTUAL1 --off \
    --output eDP1 --mode 1024x768 --pos 0x0 --rotate normal \
    --output DP1 --off \
    --output DP2-1 --off \
    --output DP2-2 --off \
    --output DP2-3 --off \
    --output HDMI2 --off \
    --output HDMI1 --off \
    --output VGA1 --mode 1024x768 --pos 0x0 --rotate normal \
    --output DP2 --off
