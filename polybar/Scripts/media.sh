#!/bin/bash

song_info=$(playerctl metadata --format '{{artist}}-{{title}}')
if [ -n "$song_info" ]; then
	echo "$song_info"
else
        echo "No media"
fi

