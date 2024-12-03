#!/bin/bash

if [[ "$1" == "--toggle" ]]; then
    # Toggle dunst state
    if dunstctl is-paused | grep -q "true"; then
        dunstctl set-paused false
    else
        dunstctl set-paused true
    fi
fi

# Display current state
if dunstctl is-paused | grep -q "true"; then
    echo "󰂛"
else
    echo "󰂚"
fi

