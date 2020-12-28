export ENV=$HOME/.kshrc
. $HOME/.xprofile
xrdb -merge $HOME/.Xresources
setxkbmap br -variant &
xterm &
sxhkd -m 1 &
bspwm
