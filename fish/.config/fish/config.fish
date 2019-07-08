#!/usr/bin/fish

fish_vi_key_bindings

function fish_greeting
end

export TERMINAL=alacritty
export BROWSER=firefox
export EDITOR=nvim

abbr vi "nvim"
abbr vifzf "nvim (fzf)"
abbr py "python3"
abbr sp "sudo pacman"

abbr i3conf "nvim ~/.config/i3/config"
abbr polyconf "nvim ~/.config/polybar/config"
abbr fishconf "nvim ~/.config/fish/config.fish"
abbr viconf "nvim ~/.vimrc"
abbr alacriconf "nvim ~/.config/alacritty/alacritty.yml"
abbr bspconf "nvim ~/.config/bspwm/bspwmrc"
abbr sxhkdconf "nvim ~/.config/sxhkd/sxhkdrc"

export TRIMMOMATIC_ADAPTERS={$HOME}/miniconda3/share/trimmomatic/adapters/

set PATH /usr/local/bin /usr/sbin $PATH

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval ~/miniconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

