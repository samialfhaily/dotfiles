# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"
PACKAGE_MANAGER="/opt/homebrew"
export MANPATH="$PACKAGE_MANAGER/share/man:$MANPATH"
export PATH="$PACKAGE_MANAGER/bin:$PACKAGE_MANAGER/sbin:$HOME/bin:$PACKAGE_MANAGER/opt/make/libexec/gnubin:$PATH"

# go
export GOPATH="$HOME/.go"
export PATH="$GOROOT/bin:$GOPATH/bin:$PATH"

# gpg
export GPG_TTY=$TTY

# nano
export EDITOR="nano"
