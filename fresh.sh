#!/bin/sh

echo "Setting up your Mac..."

# Check for Oh My Zsh and install if we don't have it
if test ! $(which omz); then
  /bin/sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/HEAD/tools/install.sh)"
fi

# Check for brew
if test ! $(which brew); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
  brew analitics off
fi

# Removing default .zshrc file
rm -rf $HOME/.zshrc

# Linking ready to go .zshrc file
ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc

brew update
brew tap homebrew/bundle

# Installing Brewfile apps
brew bundle --file $DOTFILES/Brewfile

# Getting spaceship theme
git clone https://github.com/denysdovhan/spaceship-prompt.git "$DOTFILES/themes/spaceship-prompt"
ln -s "$DOTFILES/themes/spaceship-prompt/spaceship.zsh-theme" "$DOTFILES/themes/spaceship.zsh-theme"

git config --global core.excludesFile "$DOTFILES/.gitignore_global"

# Source .macos settings
source $DOTFILES/.macos
