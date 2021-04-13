#!/bin/bash
echo "Installing Zsh"

sudo apt update && sudo apt upgrade -y

sudo apt install zsh -y

cp .zshrc ~/.zshrc

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
source .zshrc

chsh -s $(which zsh)
