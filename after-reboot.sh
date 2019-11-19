#!/bin/bash

echo "INSTALLO HOW2"
sudo npm install -g how-2

echo "INSTALLO VUE-CLI"
sudo npm install -g @vue/cli

git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k

git clone https://github.com/abertsch/Menlo-for-Powerline.git
cd Menlo-for-Powerline
sudo mv "Menlo for Powerline.ttf" /usr/share/fonts/
sudo fc-cache -vf /usr/share/fonts/
cd ..
rm -rf Menlo-for-Powerline

echo "imposta Meslo LG M for Powerline come font nel terminale e in vscode"
echo "https://gist.github.com/kevin-smets/8568070"
