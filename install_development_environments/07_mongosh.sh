#!/bin/bash
export VERSION="1.6.2"

echo "Download MongoDB Shell ${VERSION}"
curl -k -L "https://downloads.mongodb.com/compass/mongosh-${VERSION}-linux-x64.tgz" -o mongosh.tgz
tar -xf mongosh.tgz
mv mongosh-${VERSION}-linux-x64/bin ~/mongosh
ln -s ~/mongosh/mongosh ~/.local/bin
rm -r mongosh-${VERSION}-linux-x64
rm mongosh.tgz

echo "Done"

