#!/bin/sh
set -e

# copy files
rsync -a --delete .vim/ ~/.vim
cat .vimrc > ~/.vimrc

# install plugins
vim -es -u ~/.vim/plugins.vim -i NONE -c "PlugInstall" -c "qa" > /dev/null 2>&1

echo "Vim configuration files installed successfully."

