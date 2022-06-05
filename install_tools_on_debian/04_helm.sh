#!/bin/sh
export VERSION="v3.9.0"

echo "Downloading helm"
curl -L "https://get.helm.sh/helm-${VERSION}-linux-amd64.tar.gz" -o helm.tar.gz
tar -xf helm.tar.gz linux-amd64/helm
mv ./linux-amd64/helm ~/.local/bin
rmdir linux-amd64
rm helm.tar.gz

echo "Done - placed in ~/.local/bin"
ls ~/.local/bin
