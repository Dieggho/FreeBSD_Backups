#!/usr/bin/env dash

SSID=$(ifconfig wlan0 | awk -F: '/ssid/ {print $2}' | awk '{print $1}')

if [ -n "$SSID" ]; then
    echo "   $SSID%"
else
    echo "󰖪   Offline"
fi
