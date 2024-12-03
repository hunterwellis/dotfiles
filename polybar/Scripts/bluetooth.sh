#!/bin/bash

# Check if any Bluetooth device is connected
if bluetoothctl info | grep -q "Name"; then
    echo "󰂯"
else
    echo "󰂲"
fi
