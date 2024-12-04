#!/bin/bash

# Run the battery notify script every 60 seconds
while true; do
    ~/.local/share/bin/battery_notify.sh
    sleep 60
done
