#!/usr/bin/env bash

# Copied from https://github.com/mathiasbynens/dotfiles/blob/main/bootstrap.sh

cd "$(dirname "${BASH_SOURCE}")";

if [ -d ".git" ]; then
  git pull origin master;
fi;

echo 'Installing dotfiles...';
rsync --exclude ".git/" \
  --exclude ".DS_Store" \
  --exclude ".osx" \
  --exclude "bootstrap.sh" \
  --exclude "README.md" \
  --exclude "LICENSE-MIT.txt" \
  -avh --no-perms . ~;
echo 'source ${HOME}/.bashrc_cyu' >> ~/.bashrc;
source ~/.profile;

