#!/bin/sh
export VERSION="2.20.2"

echo "Downloading GitHub cli"
curl -sSL "https://github.com/cli/cli/releases/download/v${VERSION}/gh_${VERSION}_linux_amd64.tar.gz" -o gh.tar.gz
tar -xf gh.tar.gz gh_${VERSION}_linux_amd64/bin/gh
mv ./gh_${VERSION}_linux_amd64/bin/gh ~/.local/bin
rmdir gh_${VERSION}_linux_amd64/bin
rmdir gh_${VERSION}_linux_amd64
rm gh.tar.gz

echo "Done - placed in ~/.local/bin"
ls ~/.local/bin
