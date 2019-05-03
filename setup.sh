#!/bin/bash

sudo apt update


echo "INSTALLAZIONE GESTORE ASPETTO GNOME"
sudo apt-get install gnome-tweak-tool

echo "INSTALLAZIONE VIM"
sudo figlet install
sudo apt-get install vim
export VISUAL=vim
export EDITOR="$VISUAL"
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
cp -rf $PWD/.vimrc ~/.vimrc
cp -rf colors/ ~/.vim/colors
vim -c 'PluginInstall' -c 'qa!'

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

echo "INSTALLO CURL"
sudo apt-get install curl

echo "INSTALLO PYTHON 3"
sudo apt install python3-dev python3-pip python3-setuptools

echo "INSTALLO COMANDO FUCK"
sudo pip3 install thefuck

echo "INSTALLO NODE"
sudo apt install nodejs npm

echo "installazione terminata"
echo ""
echo ""
echo "mancano ancora alcune componenti, ma è necessarrio riavviare il pc"
echo "dopo il riavvio lanciare:"
echo "./after-reboot.sh"
