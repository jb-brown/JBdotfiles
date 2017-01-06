#!/usr/bin/env bash


dir="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo "Synching dotfiles from ${DIR}"

startingPWD=$pwd
cd $dir

#sync dotfiles into home
rsync --exclude ".git/" \
  --exclude ".DS_Store" \
  --exclude "bootstrap.sh" \
  --exclude "README.md" \
  --exclude "LICENSE-MIT.txt" \
  -avh --no-perms . ~;

cd $pwd

#load .bash_profile into the current terminal session(s)
#source ~/.bash_profile;
