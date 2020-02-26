#!/usr/bin/fish

fish_vi_key_bindings

function fish_greeting
end


# ABBREVIATIONS
abbr vi	    "nvim"
abbr svi    "sudo nvim"
abbr vif    "nvim (fzf)"
abbr py     "python3"
abbr sp     "sudo pacman"
abbr sps    "sudo pacman -S"
abbr ys     "yay -S"
abbr yss    "yay -Ss"
abbr yr     "yay -Rns"
abbr g      "git"
abbr gs     "git status"
abbr gb     "git branch"
abbr gc     'git commit -m "'
abbr gch    "git checkout"
abbr ga     "git add"
abbr gd     "git diff"
abbr gl     "git log"
abbr sctl   "sudo systemctl"

# OPEN CONIGURATION FILES
abbr cfi3 		"nvim ~/.config/i3/config"
abbr cfbar 		"nvim ~/.config/polybar/config"
abbr cff 		"nvim ~/.config/fish/config.fish"
abbr cfvi 		"nvim ~/.config/nvim/init.vim"
abbr cfa 		"nvim ~/.config/alacritty/alacritty.yml"
abbr cfwm 		"nvim ~/.config/bspwm/bspwmrc"
abbr cfk 		"nvim ~/.config/sxhkd/sxhkdrc"
abbr cfr 	    "nvim ~/.config/rofi/config"
abbr cflf 		"nvim ~/.config/lf/lfrc"
abbr cfqb 		"nvim ~/.config/qutebrowser/config.py"
abbr cfion 		"nvim ~/.config/ion/initrc"
abbr initf      "nvim ~/.config/omf/init.fish"


alias tcn='mv --force -t ~/.local/share/Trash '
alias cpv='rsync -ah --info=progress2'
alias gh='history|grep'


# Keybindins
# Open file manager while in insert vi mode
bind --mode insert \co lf

set -g pure_symbol_prompt "λ"
set -g pure_symbol_reverse_prompt "λ"

# Start X at login
if status is-login
    if test -z "$DISPLAY" -a $XDG_VTNR = 1
        exec startx -- -keeptty
    end
end

# pyenv init
status --is-interactive; and pyenv init - | source
status --is-interactive; and pyenv virtualenv-init - | source

eval /home/caio/miniconda3/bin/conda "shell.fish" "hook" $argv | source
