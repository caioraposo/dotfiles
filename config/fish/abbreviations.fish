abbr e	    "exa"
abbr ea	    "exa -la"
abbr vi	    "vis"
abbr dvi    "doas vis"
abbr vf     "vis (fzf)"
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

abbr xbpsi     "doas xbps-install -S"
abbr xbpsr     "doas xbps-remove -R"
abbr xbpsq     "xbps-query -Rs"

# OPEN CONIGURATION FILES
abbr cfi3 	"vis ~/.config/i3/config"
abbr cfbar 	"vis ~/.config/polybar/config"
abbr cff	"vis ~/.config/fish/config.fish"
abbr cfabbr	"vis ~/.config/fish/abbreviations.fish"
abbr initf	"vis ~/.config/fish/profile.fish"
abbr cfpfl	"vis ~/.config/fish/profile.fish"
abbr cfnvim "vis ~/.config/nvim/init.vim"
abbr cfvis 	"vis ~/.config/vis/visrc.lua"
abbr cfterm	"vis ~/.config/alacritty/alacritty.yml"
abbr cfwm 	"vis ~/.config/bspwm/bspwmrc"
abbr cfk 	"vis ~/.config/sxhkd/sxhkdrc"
abbr cfr 	"vis ~/.config/rofi/config"
abbr cflf 	"vis ~/.config/lf/lfrc"
abbr cfqb 	"vis ~/.config/qutebrowser/config.py"
abbr cfgrub	"doas vis /etc/default/grub"

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
