#!/usr/bin/fish

fish_vi_key_bindings

function fish_greeting
end
function fish_mode_prompt
end

. ~/.config/fish/abbreviations.fish
. ~/.config/fish/profile.fish

# Start X at login
if status is-login
    if test -z "$DISPLAY" -a (tty) = /dev/tty1
        exec startx -- -keeptty
    end
end

# pyenv init
#status --is-interactive; and pyenv init - | source
#status --is-interactive; and pyenv virtualenv-init - | source

eval /home/caio/.local/share/miniconda3/bin/conda "shell.fish" "hook" $argv | source
