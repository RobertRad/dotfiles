#!/bin/sh
echo "Installing git, curl..."

sudo apt install git curl jq unzip vim dnsutils
mkdir -p ~/.local/bin

export YQ_VERSION="v4.28.1"

echo "Downloading yq to ~/.local/bin"
curl -L "https://github.com/mikefarah/yq/releases/download/${YQ_VERSION}/yq_linux_amd64" -o yq
chmod +x yq
mv ./yq ~/.local/bin

echo "Done"
ls ~/.local/bin
