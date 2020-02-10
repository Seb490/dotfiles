#!/bin/sh

echo "reminder to install zsh:	'sudo apt install zsh'"
echo "reminder to change shell:	'chsh -s /bin/zsh'"

# Link zsh env.
ln -s ~/.dotfiles/.zshrc 	~/.zshrc
ln -s ~/.dotfiles/.zprofile 	~/.zprofile
ln -s ~/.dotfiles/.zshenv 	~/.zshenv

# Link vim env. 
ln -s ~/.dotfiles/.vim	 	~/.vim
ln -s ~/.dotfiles/.vimrc 	~/.vimrc

# Create cache dirs
mkdir ~/.cache/vim
mkdir ~/.cache/zsh
