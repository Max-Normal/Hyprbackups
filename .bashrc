#    _               _              
#   | |__   __ _ ___| |__  _ __ ___ 
#   | '_ \ / _` / __| '_ \| '__/ __|
#  _| |_) | (_| \__ \ | | | | | (__ 
# (_)_.__/ \__,_|___/_| |_|_|  \___|
# 
# by Stephan Raabe (2023)
# -----------------------------------------------------
# ~/.bashrc
# -----------------------------------------------------

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
PS1='[\u@\h \W]\$ '

# -----------------------------------------------------
# ALIASES
# -----------------------------------------------------

alias c='clear'
alias nf='neofetch'
alias pf='pfetch'
alias ..='cd ..'
alias ...='cd ../..'
alias gcf='cd $HOME/.config'
alias gdl='cd $HOME/Downloads'
alias install='sudo pacman -S'
alias update='sudo pacman -Syy'
alias upgrade='sudo pacman -Syu'
alias remove='sudo pacman -R'
alias l='exa -ll --color=always --group-directories-first'
alias ls='exa -al --header --icons --group-directories-first'
alias df='df -h'
alias free='free -h'
alias mutt='neomutt'
alias m='neomutt'
alias shutdown='systemctl poweroff'
alias v='nvim'
alias r='ranger'
alias t='sudo timeshift --list'
alias ts='~/.local/scripts/snapshot.sh'
alias matrix='cmatrix'
alias shot='scrot -d 3 -c -z -u'
alias shotsel='scrot -s'
alias wifi='nmtui'
#alias od='~/private/onedrive.sh'
alias rw='~/.config/waybar/reload.sh'
alias winclass="xprop | grep 'CLASS'"

# Window Managers


alias Hyprland="~/.config/hypr/starthypr.sh"

# GIT

alias gc="git clone"

# SCRIPTS

alias w='~/.local/scripts/updatewal.sh'
alias gr='python ~/.local/scripts/growthrate.py'
alias ChatGPT='python ~/mychatgpt/mychatgpt.py'
alias chat='python ~/mychatgpt/mychatgpt.py'
alias ascii='~/.local/scripts/figlet.sh'

# VIRTUAL MACHINE

alias vm='~/private/launchvm.sh'
alias lg='~/local/scripts/looking-glass.sh'
alias vmstart='virsh --connect qemu:///system start win11'
alias vmstop='virsh --connect qemu:///system destroy win11'

# EDIT CONFIG FILES

alias confb='nvim ~/dotfiles/.bashrc'

# EDIT NOTES

alias notes='vim ~/notes.txt'

# SYSTEM

alias update-grub='sudo grub-mkconfig -o /boot/grub/grub.cfg'
#alias setkb='setxkbmap us;echo "Keyboard set back to us."'

# -----------------------------------------------------
# SCREEN RESOLUTINS
# -----------------------------------------------------
#alias res1='xrandr --output DisplayPort-0 --mode 2560x1440 --rate 120'
#alias res2='xrandr --output DisplayPort-0 --mode 1920x1080 --rate 120'
alias r1='hyprctl keyword monitor ,preferred,auto,1'
alias r2='hyprctl keyword monitor ,1920x1080,auto,1'


export PATH="/usr/lib/ccache/bin/:$PATH"

# -----------------------------------------------------
# START STARSHIP
# -----------------------------------------------------
eval "$(starship init bash)"

# -----------------------------------------------------
# PYWAL
# -----------------------------------------------------
cat ~/.cache/wal/sequences

# -----------------------------------------------------
# PFETCH
# -----------------------------------------------------
echo ""
pfetch
