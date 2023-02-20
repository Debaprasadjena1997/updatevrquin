#!/bin/bash

unclutter -idle 5 -root &
sudo rfkill unblock wifi
sudo python /home/pi/20-feb-2023/vrquin.py

