#!/bin/bash

DIR=$HOME/.config/images/Wallpapers/
PICS=($(ls ${DIR}))

RANDOMPICS=${PICS[ $RANDOM % ${#PICS[@]} ]}

if [[ $(pidof swaybg) ]]; then
  pkill swaybg
fi

# Extract monitor names using hyprctl and parse the output
MONITORS=$(hyprctl monitors all | awk '/Monitor/ {print $2}')

# Change wallpaper for each connected monitor
for MONITOR in $MONITORS; do
  swww img ${DIR}/${RANDOMPICS} --transition-fps 30 --transition-type any --transition-duration 3 --outputs $MONITOR
  RANDOMPICS=${PICS[ $RANDOM % ${#PICS[@]} ]}
done
