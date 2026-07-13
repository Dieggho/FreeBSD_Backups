#!/bin/sh

if ifconfig wifibox0 | grep -q "inet "; then
    echo "   on"
else
    echo "󰖪   off"
fi
