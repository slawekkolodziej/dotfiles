#!/bin/bash

# install homebrew and its packages
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update
brew upgrade

brew tap homebrew/dupes
brew install homebrew/dupes/grep

# version control
brew install git
brew install mercurial

# images
brew install formulas/pngout.rb
brew install pngnq
brew install pngquant
brew install imagemagick

# ruby versioning
brew install rbenv
brew install ruby-build

# nodejs
brew install nodejs

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
installcask teamviewer
installcask slack

# network & security
installcask sidestep
installcask truecrypt

# dev
installcask iterm2
installcask sublime-text-3
installcask sourcetree

# virtualization
installcask casks/vmware-fusion.rb
installcask virtualbox
installcask vagrant

# text editors
installcask mou

# file sharing

# media players
installcask vlc
installcask spotify

# graphic
installcask imageoptim

# utilities
installcask slate
installcask appcleaner
installcask keka

# various
installcask adobe-air
installcask adobe-creative-cloud
installcask font-source-code-pro