#!/usr/bin/env bash

# set colors to grayscale
grayscale(){
  pkill picom
  sleep 0.1
  picom --backend=glx --window-shader-fg=$HOME/.config/picom/grayscale.glsl &
  feh --bg-scale ~/.config/images/wall.jpg

  notify-send -t 1000 "Color filter set to grayscale"
} 

# set picom to default
color(){
  pkill picom
  sleep 0.1
  picom &
  feh --bg-scale ~/.config/images/wall-color.jpg

  notify-send -t 1000 "Default color filter"
}

