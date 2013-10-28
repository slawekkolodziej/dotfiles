#!/bin/bash

# install homebrew and its packages
ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"

brew update
brew upgrade

brew tap homebrew/dupes
brew install homebrew/dupes/grep

# libs
brew install autoconf
brew install pkg-config
brew install freetype
brew install libtool
brew install pcre

# version control
brew install git
brew install mercurial

# images
brew install imagemagick
brew install libpng
brew install jpeg
brew install pngnq
brew install pngquant

# ruby versioning
brew install rbenv
brew install ruby-build

# webserver, db, cache, etc
brew install nginx
brew install mysql
brew install redis

# dev envs
brew install go
brew install node
brew tap josegonzalez/homebrew-php
brew install php54 --with-fpm  --with-imap  --without-apache --with-debug

brew cleanup


# install cask for native apps
brew tap phinze/homebrew-cask
brew install brew-cask

function installcask() {
  if brew cask list | grep "^$1$" > /dev/null; then
    echo "$1 is already installed."
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

# communication
installcask skype

# network
installcask sidestep

# dev
installcask iterm2
installcask sublime-text-3
installcask sublime-text
installcask sourcetree

# vm
installcask vmware-fusion
installcask virtualbox

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
