#!/bin/bash

# Battery file paths (adjust if your system uses different ones)
BATTERY_PATH="/sys/class/power_supply/BAT0"
CAPACITY_FILE="$BATTERY_PATH/capacity"
STATUS_FILE="$BATTERY_PATH/status"

# Thresholds for notifications
CRITICAL_LEVEL=20
LOW_LEVEL=30
FULL_LEVEL=80

# Get current battery capacity and status
BATTERY_CAPACITY=$(cat $CAPACITY_FILE)
BATTERY_STATUS=$(cat $STATUS_FILE)

# Determine the notification message and icon
if [ "$BATTERY_STATUS" == "Discharging" ]; then
    if [ "$BATTERY_CAPACITY" -le "$CRITICAL_LEVEL" ]; then
        MESSAGE="Battery Critical: $BATTERY_CAPACITY%"
        ICON="battery-caution"
        notify-send -i "$ICON" "Battery Warning" "$MESSAGE" -u critical
    elif [ "$BATTERY_CAPACITY" -le "$LOW_LEVEL" ]; then
        MESSAGE="Battery Low: $BATTERY_CAPACITY%"
        ICON="battery-low"
        notify-send -i "$ICON" "Battery Warning" "$MESSAGE"
    fi
elif [ "$BATTERY_STATUS" == "Charging" ] && [ "$BATTERY_CAPACITY" -ge "$FULL_LEVEL" ]; then
    MESSAGE="Battery Full: $BATTERY_CAPACITY%"
    ICON="battery-full"
    notify-send -i "$ICON" "Battery Status" "$MESSAGE"
fi
