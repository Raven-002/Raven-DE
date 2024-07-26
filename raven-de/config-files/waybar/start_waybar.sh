#!/bin/bash

trap "killall waybar" EXIT

CONFIG_FILES="$HOME/.config/waybar/config.jsonc $HOME/.config/waybar/style.css"

function run_waybar()
{
    killall waybar
    waybar &
}

run_waybar
current_checksums="$(md5sum `echo $CONFIG_FILES`)"
while true; do
    inotifywait -e create,modify $CONFIG_FILES
    new_checksums="$(md5sum `echo $CONFIG_FILES`)"
    if [[ "$new_checksums" == "$current_checksums" ]]; then
        continue
    fi
    run_waybar
    current_checksums="$new_checksums"
done
