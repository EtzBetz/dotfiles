#!/bin/sh

echo "Installing and configuring zsh ..."

# Check for Oh My Zsh and install if we don't have it
if test ! $(which omz); then
    /bin/sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/HEAD/tools/install.sh)"
fi

# Removes .zshrc from $HOME (if it exists) and symlinks the .zshrc file from the .dotfiles
rm -rf $HOME/.zshrc
ln -is $HOME/.dotfiles/zsh/.zshrc $HOME/.zshrc

# Removes .zprofile from $HOME (if it exists) and symlinks the .zprofile file from the .dotfiles
rm -rf $HOME/.zprofile
ln -is $HOME/.dotfiles/zsh/.zprofile $HOME/.zprofile

# Removes neofetch config.conf and symlinks the neofetch config.conf file from the .dotfiles
rm -rf $HOME/.config/neofetch/config.conf
ln -is $HOME/.dotfiles/zsh/neofetch/config.conf $HOME/.config/neofetch/config.conf

# Symlinks the custom robbyrussell theme
ln -is $HOME/.dotfiles/zsh/prompt-theme/robbyrussell.zsh-theme $HOME/.dotfiles/zsh/oh-my-zsh/custom/themes/robbyrussell.zsh-theme

# remove info like "Last login: Sun Jan  7 19:53:12 on ttys001" in terminal
touch ~/.hushlogin