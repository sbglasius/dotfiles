#!/usr/bin/env bash

# window where we came from
ORIGIN=$(xdotool getactivewindow)

# find PID of Terminal
#wid=$(xdotool search --onlyvisible --name "Terminal")
WID=$(xdotool search --onlyvisible --class gnome-terminal)

# activate Terminal window
xdotool windowactivate --sync $WID

# send keystrokes
xdotool key 'ctrl+p' 'Return'

# activate origin window
xdotool windowactivate --sync $ORIGIN
