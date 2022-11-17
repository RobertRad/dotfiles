#!/bin/sh
export VERSION="v2.5.2"

echo "Downloading argocd cli"
curl -sSL "https://github.com/argoproj/argo-cd/releases/download/${VERSION}/argocd-linux-amd64" -o argocd
chmod +x argocd
mv ./argocd ~/.local/bin

echo "Done - placed in ~/.local/bin"
ls ~/.local/bin
