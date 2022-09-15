#!/bin/sh
echo "Installing python3, pip3 & mypy"

sudo apt install python3 python3-pip
pip3 install mypy

python3 --version
pip3 --version

echo "Done"
