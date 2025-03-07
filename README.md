# Dotfiles

A collection of files with dots.

## Fonts

Download and install all fonts from the [fonts](https://github.com/samialfhaily/dotfiles/tree/main/.zsh/fonts) directory then open Terminal → Preferences → Profiles → Text, click Change under Font and select `MesloLGS NF family`.

## Environment

Install Homebrew

```zsh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Clone repository

```zsh
git clone --recursive --bare git@github.com:samialfhaily/dotfiles.git ~/.dotfiles
```

Checkout repository

```zsh
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotfiles config --local status.showUntrackedFiles no
dotfiles checkout
dotfiles submodule update
```

Install dependencies

```zsh
brew bundle --file .brew/Brewfile
```
