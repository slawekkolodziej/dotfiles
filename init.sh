#!/bin/bash

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.osx` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Keep computer awake
pmset noidle &
PMSETPID=$!

printf "\nInitialize submodules\n"
sudo git submodule update --init

printf "\nInstall homebrew and its packages\n"
source ./scripts/brew.sh

printf "\nInstall ruby versions\n"
source ./scripts/rubies.sh

printf "\nInstall node packages\n"
source ./scripts/npm.sh

printf "\nCheck OSX apps\n"
source ./scripts/check.sh

printf "\nSet system defaults\n"
source ./scripts/osx.sh

printf "\nSymlink dotfiles\n"
source ./scripts/symlink.sh

printf "\n\n---\n"
read -p "Everything's done, reboot now? (y/n) " -n 1
echo

# You can go to sleep now
kill $PMSETPID

if [[ $REPLY =~ ^[Yy]$ ]]; then
  sudo reboot
fi

