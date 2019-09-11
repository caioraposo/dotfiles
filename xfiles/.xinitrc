#!/bin/sh

xrandr --setprovideroutputsource modesetting NVIDIA-0

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

[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

session=${1:-bspwm}

case $session in
    bspwm            ) exec bspwm;;
    i3|i3wm          ) exec i3;;
    kde				 ) exec startkde;;
	openbox          ) exec openbox-session;;
	cinnamon         ) exec cinnamon-session;;
	xfce             ) exec startxfce4;;

	*) exec $1;;
esac


