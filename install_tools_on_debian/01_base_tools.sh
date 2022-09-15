#!/bin/sh
echo "Installing git, curl..."

sudo apt install git curl jq unzip vim dnsutils
mkdir -p ~/.local/bin

echo "Done"
