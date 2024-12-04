#!/bin/bash

# Notification ID (a fixed ID to reuse for volume notifications)
NOTIFICATION_ID=9999

# Get the current volume and mute status
VOLUME=$(pactl get-sink-volume @DEFAULT_SINK@ | grep -oP '\d+%' | head -n1)
IS_MUTED=$(pactl get-sink-mute @DEFAULT_SINK@ | grep -o "yes")

# Determine the message and icon
if [ "$IS_MUTED" == "yes" ]; then
    MESSAGE="Muted"
    ICON="audio-volume-muted"
else
    MESSAGE="Volume: $VOLUME"
    ICON="audio-volume-high"  # Change to low/medium/high based on thresholds if needed
fi

# Send a notification
notify-send -i "$ICON" "$MESSAGE" -h int:value:$VOLUME -t 1000 -r "$NOTIFICATION_ID"
