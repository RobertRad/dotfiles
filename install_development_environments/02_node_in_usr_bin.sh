#!/bin/sh
sudo rm -f /usr/bin/node
sudo ln -s $(which node) /usr/bin
ls -l /usr/bin/node

sudo rm -f /usr/bin/npm
sudo ln -s $(which npm) /usr/bin
ls -l /usr/bin/npm

sudo rm -f /usr/bin/npx
sudo ln -s $(which npx) /usr/bin
ls -l /usr/bin/npx

