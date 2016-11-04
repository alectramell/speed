#!/bin/bash

clear

USERNAME=$(whoami)
WHEREAMI=$(pwd)
DTAG=$(date +%S-%H-%M-%Y)

clear

stf="$DTAG.txt"
stl="$DTAG.log"

clear

speedtest-cli > /home/$USERNAME/Desktop/$stf

clear

mplayer https://raw.githubusercontent.com/alectramell/speed/master/notify.mp3 &

notify-send --expire-time="900" --icon="notification-network-wireless-connected" "..Speed Test Complete!.."

clear

sleep 1.5

clear

sensible-browser --new-tab="file:///home/alectramell/Desktop/$stf"

clear

sleep 1.5

clear

mv /home/$USERNAME/Desktop/$stf /home/$USERNAME/Desktop/$stl

clear

