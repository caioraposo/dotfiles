#!/usr/bin/fish

fish_vi_key_bindings

function fish_greeting
end


abbr vi	 "nvim"
abbr vif "nvim (fzf)"
abbr py "python3"
abbr sp "sudo pacman"
abbr sps "sudo pacman -S"
abbr ys "yay -S"
abbr yss "yay -Ss"
abbr g "git"
abbr gs "git status"
abbr gb "git branch"
abbr gc 'git commit -m "'
abbr gch "git checkout"
abbr ga "git add"

abbr cfi3 		"nvim ~/.config/i3/config"
abbr cfbar 		"nvim ~/.config/polybar/config"
abbr cff 		"nvim ~/.config/fish/config.fish"
abbr cfvi 		"nvim ~/.config/nvim/init.vim"
abbr cfa 		"nvim ~/.config/alacritty/alacritty.yml"
abbr cfbsp 		"nvim ~/.config/bspwm/bspwmrc"
abbr cfk 		"nvim ~/.config/sxhkd/sxhkdrc"


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

