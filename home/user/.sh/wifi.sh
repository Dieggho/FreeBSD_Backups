#!/usr/bin/env dash

if ifconfig wifibox0 | grep -q "inet "; then
    echo "   on"
else
    echo "󰖪i   off"
fi
