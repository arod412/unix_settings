#!/bin/bash

#Quit if error
set -e

# Move all files to home directory

cp -r .ssh ~
cp -r .vim ~
cp .customrc ~

echo "source ~/.customrc" >> ~/.bashrc

# Make current shell run new settings now

# Install packages
sudo apt install -y screen tmux vim nodejs npm fontconfig build-essential cmake zsh

# Get fonts for Powerline icons (zsh/powerlevel9k theme)
wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
mkdir -p  ~/.local/share/fonts/
mkdir -p ~/.config/fontconfig/conf.d/
mv PowerlineSymbols.otf ~/.local/share/fonts/
fc-cache -vf ~/.local/share/fonts/
mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/

# https://twasa.ml/post/wsl/ for custom setup of zsh

# Github Sidebar Creator: https://github.com/adriantanasa/github-wiki-sidebar/wiki

npm install github-wiki-sidebar -g
