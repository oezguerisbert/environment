#!/bin/bash
echo "Installing Zsh"

sudo update && sudo upgrade -y

sudo apt install zsh



bash -c 'curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh'

cp ./.zshrc ~/.zshrc

cat ~/.zshrc | zsh
