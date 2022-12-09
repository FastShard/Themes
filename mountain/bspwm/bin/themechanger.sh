#!/bin/bash

selected=$(echo "Hord
Lotus
Catppuccin
Mountain" | rofi -dmenu -theme ~/.config/bspwm/rofi/themes/launcher.rasi)

echo "$selected"

if [ "$selected" = "Hord" ]
then
	fastshard hord
	curl -s https://raw.githubusercontent.com/FastShard/Discord/main/hord/custom.css -o ~/.config/BetterDiscord/data/stable/custom.css
	bspc wm -r
	exit
fi
if [ "$selected" = "Lotus" ]
then
    	fastshard lotus
	curl -s https://raw.githubusercontent.com/FastShard/Discord/main/lotus/custom.css -o ~/.config/BetterDiscord/data/stable/custom.css
	bspc wm -r
	exit
fi
if [ "$selected" = "Catppuccin" ]
then
   	fastshard catppuccin
	curl -s https://raw.githubusercontent.com/FastShard/Discord/main/cappuccin/custom.css -o ~/.config/BetterDiscord/data/stable/custom.css
	bspc wm -r
	exit
fi
if [ "$selected" = "Mountain" ]
then
   	fastshard mountain
	curl -s https://raw.githubusercontent.com/FastShard/Discord/main/mountain/custom.css -o ~/.config/BetterDiscord/data/stable/custom.css
	bspc wm -r
	exit
fi
