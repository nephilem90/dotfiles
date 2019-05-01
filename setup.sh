#!/bin/bash

sudo apt update

echo "INSTALLAZIONE GESTORE ASPETTO GNOME"
sudo apt-get install gnome-tweak-tool

echo "INSTALLAZIONE VIM"
sudo apt-get install vim

echo "INSTALLAZIONE VSCODE"
sudo apt updatesudo apt install software-properties-common apt-transport-https wget
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt install code

echo "INSTALLAZIONE SLACK"
wget https://downloads.slack-edge.com/linux_releases/slack-desktop-3.3.8-amd64.deb
sudo apt install ./slack-desktop-*.deb
rm slack-desktop-*.deb

echo "INSTALLAZIONE PYCHARM"
sudo snap install pycharm-community --classic

echo "INSTALLAZIONE ZSH"
sudo apt-get install zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
chsh -s $(which zsh)
sudo apt-get install powerline fonts-powerline
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
cp .zshrc ~/.zshrc
source ~/.zshrc
