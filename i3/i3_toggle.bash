#!/bin/bash

STATE_FILE="state"

if [ ! -f "$STATE_FILE" ]; then
  echo "MIN" > "$STATE_STATE"
fi

STATE=$(cat "$STATE_FILE")

if [ "$STATE" == "MIN" ]; then
  echo "DEFAULT" > "$STATE_FILE"
  ln -sf ~/.config/i3/main/config ~/.config/i3/config
  i3-msg exit
else
  echo "MIN" > "$STATE_FILE"
  ln -sf ~/.config/i3/minconfig/config ~/.config/i3/config
  i3-msg exit
fi
