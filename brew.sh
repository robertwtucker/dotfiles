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
brew install coreutils
sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

brew install git
brew install gradle
brew install imagemagick --with-webp
brew install jenv
brew install maven
brew install node
brew install ruby
brew install tree
brew install wget --with-iri
brew install cdrtools

# Assumes environment already initialized with:
# HOMEBREW_CASK_OPTS=--appdir=/Applications

# Core
brew cask install java
brew cask install xquartz

# Daily
brew cask install dropbox
brew cask install evernote
brew cask install flux
brew cask install google-chrome
brew cask install lastpass
brew cask install runescape
brew cask install skype
brew cask install sophos-anti-virus-home-edition
brew cask install sonos
brew cask install spotify

# Dev
brew cask install atom
brew cask install datagrip
brew cask install intellij-idea
brew cask install jd-gui
brew cask install mysqlworkbench
brew cask install rubymine
brew cask install sqlitebrowser
brew cask install virtualbox
# brew cask install virtualbox-extension-pack
brew cask install webstorm

# Productivity/Utilities
brew cask install cyberduck
brew cask install dockertoolbox
brew cask install gyazo
brew cask install handbrake
brew cask install iterm2
brew cask install joinme
brew cask install microsoft-lync
brew cask install microsoft-office
brew cask install onyx
brew cask install slack
brew cask install teamspeak-client
brew cask install tether
brew cask install the-unarchiver
brew cask install tigervnc-viewer
brew cask install utorrent
brew cask install vlc

# Not available/App store
# boingo
# hexminer
# macx-dvd-ripper-pro
# microsoft-remote-desktop
# mint-quickview
# swipes
# twitter
# xchat-azure

# Remove outdated versions from the cellar.
brew cleanup
