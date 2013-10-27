function symlink() {
  rsync \
    --exclude ".git/" \
    --exclude "scripts/" \
    --exclude ".DS_Store" \
    --exclude "init.sh" \
    --exclude "README.md" -av --no-perms . ~/projects/dotfiles-test
  # source ~/.bash_profile
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
  symlink
else
  read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
  echo
  if [[ $REPLY =~ ^[Yy]$ ]]; then
    symlink
  fi
fi

unset symlink