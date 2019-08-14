#!/bin/sh

xrandr --setprovideroutputsource modesetting NVIDIA-0

intern=eDP-1-1
extern=HDMI-1-1

if xrandr | grep "$extern disconnected"; then
    xrandr --output "$extern" --off --output "$intern" --auto
else
    xrandr --output "$intern" --off --output "$extern" --auto
fi

[ -f "$HOME/.xprofile" ] && . ~/.xprofile

session=${1:-bspwm}

case $session in
    bspwm            ) exec bspwm;;
    i3|i3wm          ) exec i3;;
    kde				 ) exec startkde;;
	openbox          ) exec openbox-session;;
	cinnamon         ) exec cinnamon-session;;

	*) exec $1;;
esac

