#!/bin/bash

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