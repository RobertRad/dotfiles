#!/bin/bash
export VERSION="v0.37.0"

echo "Downloading driftctl"
curl -L "https://github.com/snyk/driftctl/releases/download/${VERSION}/driftctl_linux_amd64" -o driftctl
chmod +x driftctl
mv ./driftctl ~/.local/bin

echo "Done - placed in ~/.local/bin"
ls ~/.local/bin
