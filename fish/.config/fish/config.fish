#!/usr/bin/fish

fish_vi_key_bindings

function fish_greeting
end

# Open file a manager inside fish
function file_manager
    lf
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
abbr initf      "nvim ~/.config/omf/init.fish"


alias tcn='mv --force -t ~/.local/share/Trash '
alias cpv='rsync -ah --info=progress2'
alias gh='history|grep'


# Keybindins
# Open file manager while in insert vi mode
bind --mode insert \co file_manager


# Start X at login
if status is-login
    if test -z "$DISPLAY" -a $XDG_VTNR = 1
        exec startx -- -keeptty
    end
end


# THEME SETTINGS
set -g theme_display_git yes
set -g theme_display_git_untracked yes
set -g theme_display_git_ahead_verbose yes
set -g theme_git_worktree_support yes
set -g theme_display_vagrant yes
set -g theme_display_docker_machine no
set -g theme_display_hg yes
set -g theme_display_virtualenv no
set -g theme_display_ruby no
set -g theme_display_user yes
set -g theme_display_vi no
set -g theme_display_date no
set -g theme_display_cmd_duration yes
set -g theme_title_display_process yes
set -g theme_title_display_path no
set -g theme_title_use_abbreviated_path no
set -g theme_date_format "+%a %H:%M"
set -g theme_avoid_ambiguous_glyphs yes
set -g theme_powerline_fonts no
set -g theme_show_exit_status yes
set -g default_user your_normal_user
set -g theme_color_scheme dark
set -g fish_prompt_pwd_dir_length 1
set -g theme_project_dir_length 1
set -g theme_nerd_fonts yes


# pyenv init
status --is-interactive; and pyenv init - | source
status --is-interactive; and pyenv virtualenv-init - | source

eval /home/caio/miniconda3/bin/conda "shell.fish" "hook" $argv | source

