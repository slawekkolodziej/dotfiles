#!/bin/bash

function symlink() {
  rsync \
    --exclude ".git/" \
    --exclude ".gitmodules" \
    --exclude ".gitignore" \
    --exclude ".DS_Store" \
    --exclude "apps/" \
    --exclude "casks/" \
    --exclude "flags/" \
    --exclude "scripts/" \
    --exclude "README.md" \
    --exclude "init.sh" \
    -av --no-perms "$1" "$2"
}

function symlink_all() {
  symlink . ~
  symlink ./apps/sublime3/ ~/Library/Application\ Support/Sublime\ Text\ 3/
}


if [ "$1" == "--force" -o "$1" == "-f" ]; then
  symlink_all
else
  read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
  echo
  if [[ $REPLY =~ ^[Yy]$ ]]; then
    symlink_all
  fi
fi

unset symlink
unset symlink_all