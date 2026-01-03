# Dotfiles

My dotfiles setup

## Installation

```bash
# add dotfiles folder to gitignore
echo '.dotfiles' >> .gitignore

git clone --bare https://github.com/antonsivertsson/dotfiles.git $HOME/.dotfiles

# Add alias to interact with dotfiles repo
alias dot='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Disable tracking of all files in $HOME folder
dot config --local status.showUntrackedFiles no

# NOTE: This will attempt to overwrite any files you may already have.
# Backup any data you want to keep
dot checkout
```
