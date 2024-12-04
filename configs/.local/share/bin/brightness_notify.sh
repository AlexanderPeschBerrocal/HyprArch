#!/bin/bash

# Notification ID (a fixed ID to reuse for brightness notifications)
NOTIFICATION_ID=8888

# Get the current brightness status
BRIGHTNESS=$(cat /sys/class/backlight/*/brightness)
MAX_BRIGHTNESS=$(cat /sys/class/backlight/*/max_brightness)
PERCENTAGE=$((BRIGHTNESS * 100 / MAX_BRIGHTNESS))
MESSAGE="Brightness: $PERCENTAGE%"

# Send a notification
notify-send "$MESSAGE" -h int:value:$PERCENTAGE -t 1000 -r "$NOTIFICATION_ID"
