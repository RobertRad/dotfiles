#!/bin/bash
export VERSION="v0.26.7"

echo "Downloading k9s"
curl -L "https://github.com/derailed/k9s/releases/download/${VERSION}/k9s_Linux_x86_64.tar.gz" -o k9s.tar.gz
tar -xf k9s.tar.gz k9s
mv ./k9s ~/.local/bin
rm k9s.tar.gz

echo "Done - placed in ~/.local/bin"
ls ~/.local/bin
