#!/bin/sh
export NVM_VERSION="v0.39.1"

echo "Download zsh-nvm plugin"
git clone https://github.com/lukechilds/zsh-nvm ~/.oh-my-zsh/custom/plugins/zsh-nvm

echo "Done"
echo "Now open a new console and type 'nvm install <my_version>' && nvm use <my_version>'"

