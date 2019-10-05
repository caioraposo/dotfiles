#!/bin/sh

xrandr --setprovideroutputsource modesetting NVIDIA-0

xrdb -merge ~/.Xresources

intern=eDP-1-1
extern=HDMI-1-1

if xrandr | grep "$extern disconnected"; then
    # Use internal monitor
    xrandr --output "$extern" --off --output "$intern" --auto 
else
    # Switch to exernal monitor
    xrandr --output "$intern" --off --output "$extern" --auto --rate 144
fi

[ -f "$HOME/.xprofile" ] && . ~/.xprofile


# AUTOSTART PROGRAMS
sxhkd &
# feh --bg-scale ~/Pictures/Wallpapers/japan-purple.jpg &
wal -R
$HOME/.config/polybar/launch.sh &
setxkbmap br &
dunst &
nm-applet &
fcitx &
# compton &
blueman-applet &
# redshift-gtk &



exec bspwm

