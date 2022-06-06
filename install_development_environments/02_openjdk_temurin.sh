#!/bin/bash
export VERSION="18.0.1_10"

export MAIN_VERSION=${VERSION:0:2}
export URL_VERSION=${VERSION/_/%2B}
export FILE_VERSION=${VERSION/_/+}

echo "Download OpenJDK Temurin"
curl -L "https://github.com/adoptium/temurin${MAIN_VERSION}-binaries/releases/download/jdk-${URL_VERSION}/OpenJDK${MAIN_VERSION}U-jdk_x64_linux_hotspot_${VERSION}.tar.gz" -o OpenJDK.tar.gz
tar -xf OpenJDK.tar.gz
mv jdk-18.0.1+10 ~
ln -s ~/jdk-${FILE_VERSION}/bin/java ~/.local/bin
ln -s ~/jdk-${FILE_VERSION}/bin/javac ~/.local/bin
ln -s ~/jdk-${FILE_VERSION}/bin/jconsole ~/.local/bin
rm OpenJDK.tar.gz

echo "Done"

