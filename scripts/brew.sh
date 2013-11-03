#!/bin/bash

# install homebrew and its packages
ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"

brew update
brew upgrade

brew tap homebrew/dupes
brew install homebrew/dupes/grep

# version control
brew install git
brew install mercurial

# images
brew install pngnq
brew install pngquant

# ruby versioning
brew install rbenv
brew install ruby-build

brew cleanup


# install cask for native apps
brew tap phinze/homebrew-cask
brew install brew-cask

function installcask() {
  if [ -f $1 ]; then
    tmp=${1##*/};
    cask=${tmp%.[^.]*}
  else
    cask=$1
  fi

  if brew cask list | grep "^$cask$" > /dev/null; then
    echo "$cask is already installed."
  else
    brew cask install "$1"
  fi
}

# browser
installcask google-chrome
installcask google-chrome-canary
installcask firefox
installcask firefox-aurora
installcask opera
installcask opera-next
installcask tor-browser

# communication & collaboration
installcask skype
installcask hangouts
installcask team-viewer

# network & security
installcask sidestep
installcask casks/network-connect.rb
installcask true-crypt

# dev
installcask iterm2
installcask sublime-text-3
installcask sourcetree

# vm
installcask vmware-fusion
installcask virtualbox
installcask vagrant

# gaphic, movie & text editors
installcask mou

# file sharing / backup / download
installcask dropbox
installcask bit-torrent-sync
installcask u-torrent

# media players
installcask vlc
installcask spotify

# various
installcask slate
installcask app-cleaner
installcask keka
installcask imageoptim
installcask adobe-air
