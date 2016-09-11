#!/bin/bash


Clock()
{
    ZE_DATE=$(date "+%a, %b %d, %G %I:%M:%S")
    echo -n $ZE_DATE

}

Wifi()
{
   ZE_WIFI=$(iwgetid wlp2s0 | sed 's/wlp2s0    ESSID://g' | tr -d '"')
   echo -n $ZE_WIFI
}

while true; do
    echo "%{l}$(Wifi)%{c}$(Clock)"
    sleep 1
done
