# git autocomplete
[ -f ~/.git-completion.sh ] && . ~/.git-completion.sh

# rbenv
eval "$(rbenv init -)"

# define colors as words
Color_Off="\e[00m"
Black="\e[0;30m"  # Black
Red="\e[0;31m"    # Red
Green="\e[0;32m"  # Green
Yellow="\e[0;33m" # Yellow
Blue="\e[0;34m"   # Blue
Purple="\e[0;35m" # Purple
Cyan="\e[0;36m"   # Cyan
White="\e[0;37m"  # White

GIT_PS1_SHOWUPSTREAM="auto"

# prompt format & terminal colors
export PS1="$Yellow[\u@\h]$Green\$(__git_ps1) $Color_Off\w \n\$ "
export CLICOLOR=1
export LSCOLORS=DxGxcxdxCxegedabagacad
export LC_ALL=pl_PL.UTF-8

# paths
export GOPATH=$HOME/.golang
export PATH=~/.composer/vendor/bin:$GOPATH/bin:/usr/local/bin:/usr/local/sbin:$HOME/.rbenv/bin:/usr/local/share/npm/bin:/usr/X11/bin:$PATH
export BABEL_CACHE_PATH=/tmp/.babel.json

# sublime shortcut
sublime () { ~/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl $@; }

# aliases
alias cd..="cd .."
alias la="ls -la"
alias sl="sublime"
alias sl.="sublime ."

# sh options
shopt -s cdspell
