#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Install brew if it has not been installed yet.
if ! brew -v; then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew tap caskroom/cask
fi

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade --all

# Homebrew installs
brew install awscli
brew install git-extras
brew install go
brew install gpg2
brew install httpie
brew install jq
brew install packer
brew install terraform
brew install tree
brew install tmux
brew install magic-wormhole
brew install pinentry-mac
brew install ykman
brew install ykpers

# Install everyday applications.
brew cask install docker
brew cask install firefox
brew cask install freedom
brew cask install gpg-suite
brew cask install keybase
brew cask install osxfuse

# Install development tools.
brew cask install java
brew cask install intellij-idea

# More Homebrew installs (dependent on casks)
brew install gradle
brew install maven

# Remove outdated versions from the cellar.
brew cleanup
