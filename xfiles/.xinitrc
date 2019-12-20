#!/bin/sh


xrandr --setprovideroutputsource modesetting NVIDIA-0

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

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

numlockx on &
sxhkd -m 1 &
feh --bg-scale ~/Pictures/Wallpapers/japan-purple.jpg &
$HOME/.config/polybar/launch.sh &
dunst &
fcitx &
blueman-applet &
clight &
nm-applet &

exec bspwm
