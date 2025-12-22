#!/bin/zsh

# Helpers
command_exists() {
  command -v "$1" >/dev/null 2>&1
}

echo " MacOS setup"

xcode-select --install

# Setting up homebrew

if ! command_exists brew; then
  echo "🍺 Installing homebrew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  brew analytics off
else
  echo "🍺 Homebrew already installed"
fi

echo "Installing homebrew packages..."
brew bundle --file "$HOME/.setup_brewfile"
echo "Done!"
