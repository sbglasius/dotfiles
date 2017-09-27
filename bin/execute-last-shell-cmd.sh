#!/usr/bin/env bash

## window where we came from
#ORIGIN=$(xdotool getactivewindow)
#
## find PID of Terminal
##wid=$(xdotool search --onlyvisible --name "Terminal")
#WID=$(xdotool search --onlyvisible --class gnome-terminal)
#
## activate Terminal window
#xdotool windowactivate --sync $WID
#
## send keystrokes
#xdotool key 'ctrl+p' 'Return'
#
## activate origin window
#xdotool windowactivate --sync $ORIGIN




WINDOW_NAME=$(xdotool getwindowfocus getwindowname)

if echo $WINDOW_NAME | grep -q 'IDEA'; then
  wmctrl -a Terminal
  sleep .2
  xdotool key Up
  sleep .3
  xdotool key Return
fi