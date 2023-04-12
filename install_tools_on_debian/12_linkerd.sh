#!/bin/sh
export VERSION="2.13.0"

echo "Downloading Linkerd cli"
curl -sSL "https://github.com/linkerd/linkerd2/releases/download/stable-${VERSION}/linkerd2-cli-stable-${VERSION}-linux-amd64" -o linkerd
chmod +x ./linkerd
mv ./linkerd ~/.local/bin

echo "Done - placed in ~/.local/bin"
ls ~/.local/bin
