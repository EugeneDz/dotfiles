#!/bin/bash

# Installs Homebrew and some of the common dependencies needed/desired for software development

# Ask for the administrator password upfront
sudo -v

# Check for Homebrew and install it if missing
if test ! $(which brew)
then
  echo "Installing Homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew tap homebrew/versions
brew tap homebrew/dupes
brew tap Goles/battery

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade --all

# Install the Homebrew packages I use on a day-to-day basis.
#
# - tldr (https://github.com/tldr-pages/tldr): A collection of simplified and
#   community-driven man pages.
#
# - tree (http://mama.indstate.edu/users/ice/tree/): Tree is a recursive directory
#   listing command that produces a depth indented listing of files, which is
#   colorized ala dircolors if the LS_COLORS environment variable is set and
#   output is to tty.
#
# - wifi-password (https://github.com/rauchg/wifi-password): People ask you for the
#   Wi-Fi password. Answer quickly.

apps=(
    tldr
    tree
    wifi-password
    cmake
)

for item in ${apps[*]}
do
    brew install $item
done

# Remove outdated versions from the cellar
brew cleanup
