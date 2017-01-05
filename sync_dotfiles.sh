
#sync dotfiles into home
rsync --exclude ".git/" \
  --exclude ".DS_Store" \
  --exclude "sync_dotfiles.sh" \
  --exclude "README.md" \
  --exclude "LICENSE-MIT.txt" \
  --exclude "dock_apps.sh" \
  -avh --no-perms . ~;


#load .bash_profile into the current terminal session(s)
#source ~/.bash_profile;
