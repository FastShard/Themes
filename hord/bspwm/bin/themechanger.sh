#!/bin/bash

selected=$(echo "Hord
Lotus
Monochrome" | rofi -dmenu -theme ~/.config/bspwm/rofi/themes/launcher.rasi)

echo "$selected"

if [ "$selected" = "Hord" ]
then
	fastshard hord
	bspc wm -r
	exit
fi
if [ "$selected" = "Lotus" ]
then
        fastshard lotus
	bspc wm -r
	exit
fi
