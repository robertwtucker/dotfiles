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
brew install asciinema
brew install awscli
brew install azure-cli
brew install cdrtools
brew install corepack
brew install coreutils
sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum
brew install docker
brew install docker-credential-helper
brew install docker-ls
brew install exa
brew install git
brew install git-filter-repo
brew install go
brew install helm
brew install imagemagick --with-webp
brew install jq
brew install k9s
brew install kubernetes-cli
brew install lazygit
brew install markdownlint-cli
brew install marksman
brew install neovim
brew install nvm
brew install pandoc
brew install podman
brew install shellcheck
brew install tmux
brew install wget --with-iri
brew install yaml-language-server

# Assumes environment already initialized with:
# HOMEBREW_CASK_OPTS=--appdir=/Applications

# Daily
brew install --cask 1password
brew install --cask 1password-cli
brew install --cask dash
brew install --cask dropbox
brew install --cask google-chrome
brew install --cask iterm2

# Dev
brew install --cask beyond-compare
brew install --cask jd-gui
brew install --cask jetbrains-toolbox
brew install --cask pgadmin4
brew install --cask postman
brew install --cask visual-studio-code

# Productivity/Utilities
brew install --cask cyberduck
brew install --cask discord
brew install --cask gimp
brew install --cask handbrake
brew install --cask hiddenbar
brew install --cask kube-forwarder
brew install --cask ngrok
brew install --cask private-internet-access
brew install --cask shottr
brew install --cask slack
brew install --cask the-unarchiver

# Remove outdated versions from the cellar.
brew cleanup
