safe_source() {
  if [[ -f $1 ]]; then
    source "$1"
  fi
}

PACKAGE_MANAGER=/usr
PACKAGE_MANAGER="/opt/homebrew"

export MANPATH="$PACKAGE_MANAGER/share/man:$MANPATH"
export PATH="$PACKAGE_MANAGER/bin:$PACKAGE_MANAGER/sbin:$HOME/bin:$PACKAGE_MANAGER/opt/make/libexec/gnubin:$PATH"

# zsh
ZSH_THEME="powerlevel10k/powerlevel10k"
ZSH="$HOME/.zsh/remote/.oh-my-zsh"
ZSH_CUSTOM="$HOME/.zsh/local/.oh-my-zsh/custom"
ZSH_COMPDUMP="$HOME/.cache/zcompdump-$ZSH_VERSION"

fpath=($HOME/.zsh/Completion $fpath)

plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
  web-search
  docker
  gh
  brew
  pyenv
)

source $ZSH/oh-my-zsh.sh
source $HOME/.zsh/.p10k.zsh
source $HOME/.zsh/.aliases

ZSH_HIGHLIGHT_STYLES[comment]="fg=#6272a4"

# configuration
export EDITOR="nano"

# theos
export THEOS=$HOME/Developer/theos

# fastlane
# . ~/.fastlane/completions/completion.zsh
safe_source ~/.fastlane/completions/completion.sh

# autojump
safe_source $PACKAGE_MANAGER/etc/profile.d/autojump.sh

# google-cloud
safe_source $PACKAGE_MANAGER/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc
safe_source $PACKAGE_MANAGER/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc

# go
export GOPATH="$HOME/.go"

# rvm
export PATH="$PATH:$HOME/.rvm/bin"
safe_source ~/.rvm/scripts/rvm

# custom
safe_source $HOME/.zshrc-custom
