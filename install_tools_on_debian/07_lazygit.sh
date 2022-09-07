#!/bin/bash
export VERSION="0.35"

echo "Downloading lazygit"
curl -L "https://github.com/jesseduffield/lazygit/releases/download/v${VERSION}/lazygit_${VERSION}_Linux_x86_64.tar.gz" -o lazygit.tar.gz
tar -xf lazygit.tar.gz lazygit
mv ./lazygit ~/.local/bin
rm lazygit.tar.gz

echo "Done - placed in ~/.local/bin"
ls ~/.local/bin
