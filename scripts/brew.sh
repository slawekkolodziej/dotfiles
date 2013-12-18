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

# tap casks for versions & fonts
brew tap caskroom/versions
brew tap caskroom/fonts


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
installcask teamviewer

# network & security
installcask sidestep
installcask casks/network-connect.rb
installcask truecrypt

# dev
installcask iterm2
installcask sublime-text-3
installcask sourcetree
installcask p4merge

# virtualization
installcask casks/vmware-fusion.rb
installcask virtualbox
installcask vagrant

# text editors
installcask mou
installcask libreoffice

# file sharing
installcask bit-torrent-sync
installcask utorrent

# media players
installcask vlc
installcask spotify

# graphic
installcask imageoptim
installcask casks/lightroom.rb

# utilities
installcask slate
installcask appcleaner
installcask keka
installcask todoist

# various
installcask adobe-air
installcask font-source-code-pro
