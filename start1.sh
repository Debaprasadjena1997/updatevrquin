#!/bin/bash

unclutter -idle 5 -root &
sudo rfkill unblock wifi
sudo python /home/pi/updatevrquin/vrquin.py

