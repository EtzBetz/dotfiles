#!/bin/sh

# ASCII FONT: http://patorjk.com/software/taag/#p=display&h=1&v=1&c=bash&f=Univers&t=MISC

# exit if any command fails
set -e

# greeting the lord
echo "Hello Raphael! Setting up your Mac..."

echo "Please accept the administrator prompt for setup."
# Ask for the administrator password upfront
sudo -v

chmod +x ./homebrew/install.sh
chmod +x ./zsh/install.sh
chmod +x ./git/install.sh
chmod +x ./macos/install.sh
chmod +x ./iterm/install.sh
chmod +x ./python/install.sh

./homebrew/install.sh
./zsh/install.sh
./git/install.sh
./macos/install.sh
./iterm/install.sh
./python/install.sh
