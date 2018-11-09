#!/bin/bash

# Ask for the administrator password upfront
sudo -v

# Install Caskroom
brew tap caskroom/cask
brew install brew-cask
brew tap caskroom/versions

# Install packages
apps=(
    spectacle
    termhere
    iterm2
    visual-studio-code
    zeplin
    firefox
    google-chrome
    opera
    skype
    slack
    telegram-desktop
    discord
    mamp
    filezilla
)

for item in ${apps[*]}
do
    brew cask install $item
done
