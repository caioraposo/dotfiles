#!/usr/bin/fish

fish_vi_key_bindings

function fish_greeting
end

export TERMINAL=alacritty
export BROWSER=qutebrowser
export EDITOR=nvim
export QT_QPA_PLATFORMTHEME="qt5ct"

abbr vi "nvim"
abbr vifzf "nvim (fzf)"
abbr py "python3"
abbr sp "sudo pacman"
abbr sps "sudo pacman -S"
abbr ys "yay -S"
abbr yss "yay -Ss"

abbr cfi3 		"nvim ~/.config/i3/config"
abbr cfbar 		"nvim ~/.config/polybar/config"
abbr cff 		"nvim ~/.config/fish/config.fish"
abbr cfvi 		"nvim ~/.config/nvim/init.vim"
abbr cfa 		"nvim ~/.config/alacritty/alacritty.yml"
abbr cfbsp 		"nvim ~/.config/bspwm/bspwmrc"
abbr cfk 		"nvim ~/.config/sxhkd/sxhkdrc"

export TRIMMOMATIC_ADAPTERS={$HOME}/miniconda3/share/trimmomatic/adapters/

set PATH /usr/local/bin /usr/sbin $PATH


# Start X at login
if status is-login
    if test -z "$DISPLAY" -a $XDG_VTNR = 1
        exec startx -- -keeptty
    end
end


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval ~/miniconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

