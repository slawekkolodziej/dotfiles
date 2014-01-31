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

pushd ./scripts
    printf "\nInstall homebrew and its packages\n"
    . brew.sh

    printf "\nInstall ruby versions\n"
    . rubies.sh

    printf "\nInstall node packages\n"
    . npm.sh

    printf "\nCheck OSX apps\n"
    . check.sh

    printf "\nSet system defaults\n"
    . osx.sh

    printf "\nSymlink dotfiles\n"
    . symlink.sh
popd

printf "\n\n---\n"
read -p "Everything's done, reboot now? (y/n) " -n 1
echo

# You can go to sleep now
kill $PMSETPID

if [[ $REPLY =~ ^[Yy]$ ]]; then
  sudo reboot
fi

