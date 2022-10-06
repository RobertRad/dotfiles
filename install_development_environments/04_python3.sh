#!/bin/sh
echo "Installing python3, pip3 & mypy"

sudo apt install python3 python3-pip python3-venv
pip3 install mypy
pip3 install virtualenv

python3 --version
pip3 --version

echo "Done"
