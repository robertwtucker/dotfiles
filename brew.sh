#!/usr/bin/env bash
# Install command-line tools using Homebrew.

# Ask for the administrator password up front.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Check for Homebrew and install if not found
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade --all

# Install brew packages
brew install ansifilter
brew install awscli
brew install cdrtools
brew install coreutils
sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum
brew install docker-ls
brew install git
brew install imagemagick --with-webp
brew install nvm
brew install tmux
brew install wget --with-iri
brew install yarn

# Assumes environment already initialized with:
# HOMEBREW_CASK_OPTS=--appdir=/Applications

# Daily
brew install --cask docker
brew install --cask dropbox
brew install --cask google-chrome
brew install --cask lastpass
brew install --cask sophos-anti-virus-home-edition
brew install --cask spotify

# Dev
brew install --cask jd-gui
brew install --cask jetbrains-toolbox
brew install --cask mysqlworkbench
brew install --cask sqlitebrowser
brew install --cask visual-studio-code

# Productivity/Utilities
brew install --cask cyberduck
brew install --cask discord
brew install --cask gimp
brew install --cask handbrake
brew install --cask iterm2
brew install --cask ngrok
brew install --cask slack
brew install --cask the-unarchiver

# Remove outdated versions from the cellar.
brew cleanup
