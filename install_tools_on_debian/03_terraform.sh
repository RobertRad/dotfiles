#!/bin/sh
export VERSION="1.2.7"

echo "Downloading terraform"
curl -L "https://releases.hashicorp.com/terraform/${VERSION}/terraform_${VERSION}_linux_amd64.zip" -o terraform.zip
unzip terraform.zip
mv terraform ~/.local/bin
rm terraform.zip

echo "Done - placed in ~/.local/bin"
ls ~/.local/bin
