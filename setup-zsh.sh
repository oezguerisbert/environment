#!/bin/bash
echo "Installing Zsh"

sudo update && sudo upgrade -y

sudo apt install zsh

curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh

cp ./.zshrc ~/.zshrc

cd ~/

source ./.zshrc
