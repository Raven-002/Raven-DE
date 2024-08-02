#!/bin/sh

WALLPAPER_DIR="/usr/share/raven-de/binaries/Wallpapers"
while true; do 
	sleep 1

	for wallpaper in $(hyprctl hyprpaper listloaded); do
		hyprctl hyprpaper unload "$wallpaper"
	done

	wallpaper="$(find "$WALLPAPER_DIR" -type f | shuf -n 1)"
	hyprctl hyprpaper preload "$wallpaper"
	hyprctl hyprpaper wallpaper ",$wallpaper"
done