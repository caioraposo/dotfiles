#!/bin/sh


intern=eDP1
extern=HDMI1

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

# Configure keyboard layout
setxkbmap br,us -variant dvorak, -option grp:alt_shift_toggle,caps:swapescape


if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# Start some nice programs

numlockx on &
sxhkd -m 1 &
feh --bg-scale ~/.config/wallpaper.png &
$HOME/.config/polybar/launch.sh &
dunst &

exec bspwm
