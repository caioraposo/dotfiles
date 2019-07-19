#!/bin/sh

xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto

[ -f "$HOME/.xprofile" ] && . ~/.xprofile

session=${1:-bspwm}

case $session in
    bspwm            ) exec bspwm;;
    i3|i3wm          ) exec i3;;
	kde				 ) exec startkde;;
	openbox          ) exec openbox-session;;

	*) exec $1;;
esac

