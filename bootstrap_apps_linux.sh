#!/bin/sh

# Install basic tools
sudo apt-get install git vim zsh curl htop sox build-essential

# Set vim as the default editor
sudo update-alternatives --set editor /usr/bin/vim.basic

# Install linuxbrew
#sh -c "$(curl -fsSL  https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"

# Install Sublimetext 
# Install the GPG key:
#wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -

# Ensure apt is set up to use https sources
#sudo apt-get install apt-transport-https

# Select the stable channel
#echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

# Update apt sources and install Sublime Text 
#sudo apt-get update
#sudo apt-get install sublime-text

# Install VS Code
#sudo snap install vscode --classic
