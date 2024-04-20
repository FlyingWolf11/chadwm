#!/bin/sh

xrdb merge ~/.Xresources 
xbacklight -set 10 &
feh --bg-fill ~/Pictures/wallpapers/framework_nord.webp &
xset r rate 200 50 &
xset s 180 &
xautolock -time 5 -locker 'betterlockscreen --lock blur' &
picom &

zsh ~/.config/chadwm/scripts/bar.sh &
while type chadwm >/dev/null; do chadwm && continue || break; done
