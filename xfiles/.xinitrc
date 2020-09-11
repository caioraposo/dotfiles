#!/bin/sh


xrandr --output DisplayPort-1 --mode 1920x1080 --rate 144


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
setxkbmap br,br -variant dvorak, -option grp:alt_shift_toggle,caps:swapescape


if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# Start some nice programs

numlockx on &
sxhkd -m 1 &
ibus-daemon --xim -d &
feh --bg-scale ~/.config/wallpaper.png &
$HOME/.config/polybar/launch.sh &
dunst &
xflux -l -1.455755 -g -48.490180 & # Belém coordinates

exec dbus-launch --exit-with-session bspwm
