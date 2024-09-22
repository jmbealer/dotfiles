#!/bin/bash

# swayidle -w timeout 120 ' swaylock ' \
# swayidle -w timeout 300 'swaylock -f -c 000000' \
swayidle -w timeout 600 'swaylock -f -c 000000' \
	\
	timeout 1200 'hyprctl dispatch dpms off' \
	resume 'hyprctl dispatch dpms on' \
	\
	timeout 1800 'systemctl suspend'# timeout 12000 'systemctl suspend' # timeout 600 'hyprctl dispatch dpms off' \
# timeout 400 ' hyprctl dispatch dpms off' \
# before-sleep 'swaylock'
before-sleep 'swaylock -f -c 000000' &
