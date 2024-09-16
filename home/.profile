#!/bin/sh
# Profile file. Runs on login. Environmental variables are set here.

# Default programs
export EDITOR="nvim"
export TERMINAL="alacritty"
export BROWSER="qutebrowser"
export READER="zathura"
export FILE="lf"
export CALENDAR="calcurse"

# XDG Base Directories
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"

# XDG User Directories
export XDG_DESKTOP_DIR="$HOME/desktop"
export XDG_DOCUMENTS_DIR="$HOME/documents"
export XDG_DOWNLOAD_DIR="$HOME/downloads"
export XDG_MUSIC_DIR="$HOME/music"
export XDG_PICTURES_DIR="$HOME/pictures"
export XDG_VIDEOS_DIR="$HOME/videos"

export PATH="$PATH:$HOME/.local/bin/"
export PATH="$PATH:$XDG_DATA_HOME/cargo/bin"
export PATH="$PATH:$XDG_DATA_HOME/go/bin"
export PATH="$PATH:$XDG_DATA_HOME/pyenv/bin"
export PATH="$PATH:$HOME/.local/src/cproc/qbe/obj"
export PATH="$PATH:/opt/texlive/2022/bin/x86_64-linuxmusl/"

# Other programs settings:
export FZF_DEFAULT_OPTS="--layout=reverse --height 40%"
export TERMINFO="/usr/share/terminfo"
export AMD_VULKAN_ICD=RADV

# ~/ Clean-up:
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export NOTMUCH_CONFIG="$XDG_CONFIG_HOME/notmuch-config"
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc-2.0"
export LESSHISTFILE="-"
export WGETRC="$XDG_CONFIG_HOME/wget/wgetrc"
export INPUTRC="$XDG_CONFIG_HOME/inputrc"
export PASSWORD_STORE_DIR="$XDG_DATA_HOME/password-store"
export PYENV_ROOT="$XDG_DATA_HOME/pyenv"
export GOPATH="$XDG_DATA_HOME/go"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"

# Wayland
export XDG_CURRENT_DESKTOP=sway
export XDG_SESSION_TYPE=wayland
export _JAVA_AWT_WM_NONREPARENTING=1
export SDL_VIDEODRIVER=wayland
export QT_QPA_PLATFORM=wayland-egl
export GDK_BACKEND=wayland,x11
export QT_WAYLAND_DISABLE_WINDOWDECORATION="1"
#export WLR_DRM_NO_MODIFIERS=1

# startx at login
if [ -z $DISPLAY ] && [ $(tty) = /dev/tty1 ]; then exec sway; fi
