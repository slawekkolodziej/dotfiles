#!/bin/bash

# Ruby versions
function installRuby() {
  if [ -d "$HOME/.rbenv/versions/$1" ]; then
    echo -e "\033[32m* Ruby $1 is already installed\033\033[39m"
  else
    rbenv install $1
  fi
}

installRuby "1.9.3-p374"

unset installRuby
