
# JBs’s dotfiles 

![Screenshot of shell prompt](https://i.imgur.com/EkEtphC.png)

## Installation

**Warning:** If you want to give these dotfiles a try, you should first fork this repository, review the code, and remove things you don’t want or need. Don’t blindly use these settings unless you know what that entails. Use at your own risk!

### Using Git and the bootstrap script

You can clone the repository wherever you want. (You might keep it in `~/Projects/dotfiles`, with `~/dotfiles` as a symlink.) The sync script will pull in the latest version and copy the files to your home folder.

```bash
git clone https://github.com/jb-brown/dotfiles.git && cd dotfiles && source sync_dotfiles.sh
```

To update, `cd` into your local `dotfiles` repository and then:

```bash
source sync_dotfiles.sh
```


### Specify the `$PATH`

If `~/.path` exists, it will be sourced along with the other files, before any feature testing (such as [detecting which version of `ls` is being used](https://github.com/jb-brown/dotfiles/blob/aff769fd75225d8f2e481185a71d5e05b76002dc/.aliases#L21-26)) takes place.

Here’s an example `~/.path` file that adds `/usr/local/bin` to the `$PATH`:

```bash
export PATH="/usr/local/bin:$PATH"
```

### Add custom commands without creating a new fork

If `~/.extra` exists, it will be sourced along with the other files. You can use this to add a few custom commands without the need to fork this entire repository, or to add commands you don’t want to commit to a public repository.

Your `~/.extra` might look something like this:

```bash
# Git credentials
# Not in the repository, to prevent people from accidentally committing under my name
GIT_AUTHOR_NAME="your name"
GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
git config --global user.name "$GIT_AUTHOR_NAME"
GIT_AUTHOR_EMAIL="you@mailinator.com"
GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
git config --global user.email "$GIT_AUTHOR_EMAIL"
```

You could also use `~/.extra` to override settings, functions and aliases from my dotfiles repository. It’s probably better to [fork this repository](https://github.com/jb-brown/dotfiles/fork) instead, though.

### Sensible macOS defaults

When setting up a new Mac, you may want to set some sensible macOS defaults for software development in combo with these dotfiles.

I suggest using <https://github.com/PelotonTechIO/BootstrapOSX> in coordination of this project, by running the following. They are designed to be run together.

```bash
git clone https://github.com/PelotonTechIO/bootstrapOSX.git
cd bootstrapOSX
source bootstraposx.sh --extras "jb-brown/dotfiles"
```


## Feedback

Suggestions/improvements
[welcome](https://github.com/jb-brown/dotfiles/issues)!
## Thanks to…
* Mathias Bynes - This is forked from his great work at https://github.com/mathiasbynens/dotfiles
