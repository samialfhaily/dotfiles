safe_source() {
  if [[ -f $1 ]]; then
    source "$1"
  fi
}

PACKAGE_MANAGER="/opt/homebrew"

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

# autojump
safe_source $PACKAGE_MANAGER/etc/profile.d/autojump.sh
