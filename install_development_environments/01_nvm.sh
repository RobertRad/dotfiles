#!/bin/sh
export NVM_VERSION="v0.39.1"

echo "Download nvm"
curl -o- "https://raw.githubusercontent.com/nvm-sh/nvm/${NVM_VERSION}/install.sh" | bash

echo "Done"
echo "Now open a new console and type 'nvm install <my_version>' && nvm use <my_version>'"

