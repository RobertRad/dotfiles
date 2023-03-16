#!/bin/bash
export VERSION="19"

echo "Download Amazon Corretto ${VERSION}"
curl -L -k "https://corretto.aws/downloads/latest/amazon-corretto-${VERSION}-x64-linux-jdk.tar.gz" -o corretto.tar.gz
tar -xf corretto.tar.gz
FOLDER=$(ls -d amazon-corretto-*-linux-x64)
mv $FOLDER ~/
ln -s -f ~/${FOLDER}/bin/java ~/.local/bin
ln -s -f ~/${FOLDER}/bin/javac ~/.local/bin
ln -s -f ~/${FOLDER}/bin/jconsole ~/.local/bin
rm corretto.tar.gz

echo "Done"

