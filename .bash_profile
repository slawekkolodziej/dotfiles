# prompt format & terminal colors
export PS1="\e[0;33m[\u@\h]\e[00m \w \n\$ "
export CLICOLOR=1
export LSCOLORS=DxGxcxdxCxegedabagacad
export LC_ALL=pl_PL.UTF-8

# paths
export PATH=/usr/local/bin:/usr/local/sbin:$HOME/.rbenv/bin:/usr/local/share/npm/bin:/usr/X11/bin:$PATH
export GOPATH=$HOME/.golang
# export PYTHONPATH=~/htdocs/python/labs


# sublime shortcut
sublime () { ~/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl $@; }

# aliases
alias cd..="cd .."
alias la="ls -la"

alias be="bundle exec"
alias sl="sublime"
alias sl.="sublime ."

# sh options
shopt -s cdspell

# rbenv
eval "$(rbenv init -)"

# git autocomplete
[ -f ~/.git-completion.sh ] && . ~/.git-completion.sh
