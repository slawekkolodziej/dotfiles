#!/bin/bash

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.osx` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

echo "Install homebrew and its packages"
./scripts/brew.sh

echo "Install ruby versions"
./scripts/rubies.sh

echo "Check OSX apps"
./scripts/check.sh

echo "Set system defaults"
./scripts/osx.sh

echo "Symlink dotfiles"
./scripts/symlink.sh