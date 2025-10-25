#!/bin/bash

source ~/.config/myenv/monitors.env

RES=$(hyprctl monitors | grep "$PRIMARY_MONITOR" | awk '{print $2}')

if [ "$RES" = "$PRIMARY_MONITOR" ]; then
  hyprctl keyword monitor $PRIMARY_MONITOR,disable
else
  hyprctl keyword monitor $PRIMARY_MONITOR,$PRIMARY_MONITOR_SETTINGS
fi
