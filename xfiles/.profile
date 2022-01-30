#!/bin/sh
# Profile file. Runs on login. Environmental variables are set here.

# Default programs
export EDITOR="vis"
export TERMINAL="alacritty"
export BROWSER="qutebrowser"
export READER="zathura"
export FM="lf"
export CALENDAR="calcurse"

export PATH="$PATH:$HOME/.local/bin/"
export PATH="$PATH:$HOME/.local/share/cargo/bin"
export PATH="$PATH:$HOME/.local/share/pyenv/bin"
export PATH="$PATH:$HOME/.local/share/Discord"
export PATH="$PATH:$HOME/.local/src/cproc/qbe/obj"
export PATH="$PATH:$HOME/.local/share/google-cloud-sdk/bin"
#export PATH="$PATH:/opt/texlive/2020/bin/x86_64-linuxmusl"

# Other programs settings:
export FZF_DEFAULT_OPTS="--layout=reverse --height 40%"
export TERMINFO="/usr/share/terminfo"
export QT_QPA_PLATFORMTHEME="qt5ct"
export XDG_RUNTIME_DIR="$HOME/.local/xdgdir"
export XDG_DATA_HOME="$HOME/.local/share"
#export XDG_DATA_DIRS="/var/lib/flatpak/exports/share"
export XDG_PICTURES_DIR="$HOME/Pictures"
export XDG_SCREENSHOTS_DIR="$HOME/Pictures/Screenshots"
export SXHKD_SHELL="/usr/bin/sh"
export WINIT_HIDPI_FACTOR="1.0"
export GO111MODULE=on


# ~/ Clean-up:
#export XAUTHORITY="$HOME/.Xauthority" # This line will break some DMs.
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export NOTMUCH_CONFIG="$HOME/.config/notmuch-config"
export GTK2_RC_FILES="$HOME/.config/gtk-2.0/gtkrc-2.0"
export LESSHISTFILE="-"
export WGETRC="$HOME/.config/wget/wgetrc"
export INPUTRC="$HOME/.config/inputrc"
export PASSWORD_STORE_DIR="$HOME/.local/share/password-store"
export PYENV_ROOT="$XDG_DATA_HOME/pyenv"
export GOPATH="$XDG_DATA_HOME/go"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
export IBUS_MOZC_DEFAULT_HIRAGANA=" ibus-daemon --xim -d"
#export GTK_IM_MODULE=fcitx
#export QT_IM_MODULE=fcitx
#export XMODIFIERS=@im=fcitx
# Wayland
export MOZ_ENABLE_WAYLAND=1
export XDG_CURRENT_DESKTOP=sway
export XDG_SESSION_TYPE=wayland
export _JAVA_AWT_WM_NONREPARENTING=1
export SDL_VIDEODRIVER=wayland
export QT_QPA_PLATFORM=wayland
export GDK_BACKEND=wayland
export QT_WAYLAND_DISABLE_WINDOWDECORATION="1"

# startx at login
#if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then exec startx; fi
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then exec dbus-launch --exit-with-session sway; fi
