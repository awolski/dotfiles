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
brew install gnugpg
brew install gradle
brew install httpie
brew install jq
brew install maven
brew install nvm
brew install tmux

# Install everyday applications. 
brew cask install google-chrome
brew cask install iterm2
brew cask install skype

# Install development tools.
brew cask install dockertoolbox
brew cask install intellij-idea
brew cask install java
brew cask install webstorm

# Install utilities
brew cask install tunnelblick

# Remove outdated versions from the cellar.
brew cleanup
