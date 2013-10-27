#!/bin/bash

# install homebrew and its packages
ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"

brew update
brew upgrade
brew tap homebrew/dupes
brew install homebrew/dupes/grep
brew tap josegonzalez/homebrew-php

brew install autoconf git imagemagick libpng mercurial nginx pcre pngnq rbenv ruby-build \
             freetype go jpeg libtool mysql node pkg-config pngquant redis

brew install php54 --with-fpm  --with-imap  --without-apache --with-debug

brew cleanup


# install cask for native apps
brew tap phinze/homebrew-cask
brew install brew-cask

function installcask() {
  if brew cask info "${@}" | grep "Not installed" > /dev/null; then
    brew cask install "${@}"
  else
    echo "${@} is already installed."
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
installcask sublime-text
installcask sublime-text-3
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
