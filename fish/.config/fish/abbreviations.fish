abbr vi	    "nvim"
abbr dvi    "doas nvim"
abbr vf     "nvim (fzf)"
abbr py     "python3"
abbr tree   "exa -T"

abbr g      "git"
abbr gs     "git status"
abbr gb     "git branch"
abbr gc     'git commit'
abbr gch    "git checkout"
abbr ga     "git add"
abbr gd     "git diff"
abbr gl     "git log"

abbr xi     "doas xbps-install -Su"
abbr xr     "doas xbps-remove -R"
abbr xq     "xbps-query -Rs"

# OPEN CONIGURATION FILES
abbr cfi3 	"nvim ~/.config/i3/config"
abbr cfbar 	"nvim ~/.config/polybar/config"
abbr cff	"nvim ~/.config/fish/config.fish"
abbr cfabbr	"nvim ~/.config/fish/abbreviations.fish"
abbr initf	"nvim ~/.config/fish/profile.fish"
abbr cfpfl	"nvim ~/.config/fish/profile.fish"
abbr cfvi 	"nvim ~/.config/nvim/init.vim"
abbr cfterm	"nvim ~/.config/alacritty/alacritty.yml"
abbr cfwm 	"nvim ~/.config/bspwm/bspwmrc"
abbr cfk 	"nvim ~/.config/sxhkd/sxhkdrc"
abbr cfr 	"nvim ~/.config/rofi/config"
abbr cflf 	"nvim ~/.config/lf/lfrc"
abbr cfqb 	"nvim ~/.config/qutebrowser/config.py"
abbr cfgrub	"doas nvim /etc/default/grub"

# RUN SYSTEMD/GLIBC APPS
alias dorunf='docker run -i -t
    --privileged
    --net host
    -u $UID:$GID
    -e DISPLAY
    -e COLUMNS="`tput cols`"
    -e LINES="`tput lines`"
    -w $PWD
    -v /etc/group:/etc/group:ro
    -v /etc/passwd:/etc/passwd:ro
    -v /etc/shadow:/etc/shadow:ro
    -v /etc/sudoers.d:/etc/sudoers.d:ro
    -v /usr/share/themes:/usr/share/themes:ro
    -v /usr/share/fonts:/usr/share/fonts:ro
    -v /etc/X11:/etc/X11:ro
    -v /var/run/docker.sock:/var/run/docker.sock
    -v /tmp/.X11-unix:/tmp/.X11-unix:rw
    -v /home/$USER:/home/$USER'

# Download music
abbr ytm "youtube-dl -x -f 251 --add-metadata "
