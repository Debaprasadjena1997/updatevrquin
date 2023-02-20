#!/bin/bash

unclutter -idle 5 -root &
sudo rfkill unblock wifi
cd /home/pi/piSignagePro



. /home/pi/.bash_profile
export WEBKIT_DISABLE_TBS=1
python remove.py &
python restart.py &
python thumbnails.py &
node pi-monitor.js
sleep 10 
sudo kill $(pidof python omx.py)
sudo pkill omxplayer
sleep infinity
