#!/bin/bash
echo "Installing Zsh"

sudo apt update && sudo apt upgrade -y

sudo apt install zsh


cp .zshrc ~/.zshrc

bash -c 'curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh'

source ./.zshrc
