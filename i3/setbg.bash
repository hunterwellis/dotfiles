#!/bin/bash

HOUR=$(date +%H)

if [ $HOUR -ge 8] && [ $HOUR -lt 20]; then
    feh --bg-scale ~/.config/images/wall-color.jpg
else
    feh --bg-scale ~/.config/images/qcqKfdZ.png
fi
