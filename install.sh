#!/bin/sh

# exit if any command fails
set -e

# greeting the lord
echo "Hello Raphael! Setting up your Mac..."

echo "Please accept the administrator prompt for setup."
# Ask for the administrator password upfront
sudo -v

./homebrew/install.sh
./zsh/install.sh
./git/install.sh
./macos/install.sh
./iterm/install.sh
./mackup/install.sh






# Symlink the Mackup config file to the home directory
ln -s ./.mackup.cfg $HOME/.mackup.cfg