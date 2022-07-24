#!/usr/bin/env bash
#!/bin/bash
# vim: tw=0

set -eo pipefail

color() {
  local colornumber="$1"
  shift
  tput setaf "$colornumber"
  echo "$*"
  tput sgr0
}

# blue = 4
# magenta = 5
red(){ color 1 "$*"; }
green(){ color 2 "$*"; }
yellow(){ color 3 "$*"; }

info(){
  green "=== $@"
}

error(){
  red "!! $@" >&2
}

stay_awake_while(){
  caffeinate -dims "$@"
}

quietly_brew_bundle(){
  local brewfile=$1
  shift
  local regex='(^Using )|Homebrew Bundle complete|Skipping install of|It is not currently installed|Verifying SHA-256|==> (Downloading|Purging)|Already downloaded:|No SHA-256'
  stay_awake_while brew bundle --no-lock --file="$brewfile" "$@" | (grep -vE "$regex" || true)
}

command_does_not_exist(){
  ! command -v "$1" > /dev/null
}

info "Checking for command-line tools..."
if command_does_not_exist xcodebuild; then
  stay_awake_while xcode-select --install && sudo xcode-select --switch /Library/Developer/CommandLineTools
fi

info "Installing Homebrew (if not already installed)..."
if command_does_not_exist brew; then
  stay_awake_while /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

info "Installing Homebrew packages..."
brew tap homebrew/bundle
brew install mas 2>/dev/null
quietly_brew_bundle Brewfile --verbose
quietly_brew_bundle Brewfile.mas
quietly_brew_bundle Brewfile.casks || true

info "Installing oh my zsh (if not already installed)..."
if ! [ -d ~/.oh-my-zsh ]; then
  stay_awake_while sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

info "Creating screenshots directory on the Desktop..."
mkdir -p ~/Desktop/screenshots

info "Creating repo directories..."
mkdir -p ~/repos/work
mkdir -p ~/repos/personal

stay_awake_while ./mac-os-settings

export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Load Volta (before setup scripts) in case it's the first time installing them
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

stay_awake_while ./git
stay_awake_while ./javascript

green "== Success! =="

yellow "== Post-install instructions =="
yellow "Follow the remaining instructions for manual setup in the README"
