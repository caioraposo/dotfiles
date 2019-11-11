#!/bin/sh

xrandr --setprovideroutputsource modesetting NVIDIA-0

xrdb -merge ~/.Xresources


intern=eDP-1-1
extern=HDMI-1-1

if xrandr | grep "$extern disconnected"; then
    # Use internal monitor
    xrandr --output "$extern" --off --output "$intern" --auto --dpi 75
else
    # Switch to exernal monitor
    xrandr --output "$intern" --off --output "$extern" --auto --rate 144
fi


[ -f "$HOME/.xprofile" ] && . ~/.xprofile


# AUTOSTART PROGRAMS
numlockx on &
sxhkd -m 1 &
# feh --bg-scale ~/Pictures/Wallpapers/japan-purple.jpg &
wal -R
$HOME/.config/polybar/launch.sh &
dunst &
nm-applet &
fcitx &
clight &
# compton &
blueman-applet &
# setxkbmap -model pc105 -layout us,us -variant dvorak-intl, -option grp:alt_shift_toggle

exec bspwm
