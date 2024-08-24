#!/bin/bash

feh --bg-scale $HOME/.config/raven-de/images/background

if [ -e "$HOME/.config/raven-de/qtile/user-auto-start.sh" ]; then
    source "$HOME/.config/raven-de/qtile/user-auto-start.sh"
fi
