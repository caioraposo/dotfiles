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
abbr vif    "nvim (fzf)"
abbr py     "python3"
abbr sp     "sudo pacman"
abbr sps    "sudo pacman -S"
abbr ys     "yay -S"
abbr yss    "yay -Ss"
abbr g      "git"
abbr gs     "git status"
abbr gb     "git branch"
abbr gc     'git commit -m "'
abbr gch    "git checkout"
abbr ga     "git add"

# OPEN CONIGURATION FILES
abbr cfi3 		"nvim ~/.config/i3/config"
abbr cfbar 		"nvim ~/.config/polybar/config"
abbr cff 		"nvim ~/.config/fish/config.fish"
abbr cfvi 		"nvim ~/.config/nvim/init.vim"
abbr cfa 		"nvim ~/.config/alacritty/alacritty.yml"
abbr cfbsp 		"nvim ~/.config/bspwm/bspwmrc"
abbr cfk 		"nvim ~/.config/sxhkd/sxhkdrc"
abbr cfr 	    "nvim ~/.config/rofi/.config/rofi/config"


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


# Activate python project virtual environment
alias poetry_shell='. (dirname (poetry run which python))/activate.fish'


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /home/caio/miniconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<


# Show git branch in prompt
# from: https://www.martinklepsch.org/posts/git-prompt-for-fish-shell.html
set normal (set_color normal)
set magenta (set_color magenta)
set yellow (set_color yellow)
set green (set_color green)
set red (set_color red)
set gray (set_color -o black)

# Fish git prompt
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_color_branch yellow
set __fish_git_prompt_color_upstream_ahead green
set __fish_git_prompt_color_upstream_behind red

# Status Chars
set __fish_git_prompt_char_dirtystate '⚡'
set __fish_git_prompt_char_stagedstate '→'
set __fish_git_prompt_char_untrackedfiles '☡'
set __fish_git_prompt_char_stashstate '↩'
set __fish_git_prompt_char_upstream_ahead '+'
set __fish_git_prompt_char_upstream_behind '-'


function fish_prompt
  set last_status $status

  printf '%s' $USER '@' (hostname)
  set_color $fish_color_cwd
  printf ' %s' (prompt_pwd)
  set_color normal

  printf '%s ' (__fish_git_prompt)
  printf '\n> '

  set_color normal
end
