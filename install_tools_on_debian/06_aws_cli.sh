#!/bin/sh
echo "Installing aws cli"
echo "This takes a while - Press [Enter] to continue"
read ignore

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
rm awscliv2.zip
rm -r aws
echo "Done"
