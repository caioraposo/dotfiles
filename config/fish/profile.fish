# Profile file. Runs on login. Environmental variables are set here.

export PATH="$PATH:$HOME/.local/bin/"
export PATH="$HOME/.local/share/cargo/bin:$PATH"
export PATH="$HOME/.local/share/pyenv/bin:$PATH"
export PATH="$HOME/.local/share/Discord:$PATH"

# Default programs:
export EDITOR="vis"
export TERMINAL="alacritty"
export BROWSER="qutebrowser"
export READER="zathura"
export FM="lf"
export CALENDAR="calcurse"

# Dvorak..
#export XKB_DEFAULT_LAYOUT="br"
#export XKB_DEFAULT_VARIANT="dvorak"
#export XKB_DEFAULT_OPTION="grp:alt_shift_toggle,caps:swapescape"
#export XKB_DEFAULT_MODEL="pc101"

# Other program settings:
export FZF_DEFAULT_OPTS="--layout=reverse --height 40%"
export TERMINFO="/usr/share/terminfo"
export QT_QPA_PLATFORMTHEME="qt5ct"
export XDG_RUNTIME_DIR="$HOME/.local/xdgdir"
export XDG_DATA_HOME="$HOME/.local/share"
export SXHKD_SHELL="/usr/bin/sh"
export WINIT_HIDPI_FACTOR="1.0"

# ~/ Clean-up:
#export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority" # This line will break some DMs.
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
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus
