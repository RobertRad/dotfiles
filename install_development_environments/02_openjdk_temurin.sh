#!/bin/bash
export VERSION="18.0.1_10"

export MAIN_VERSION=${VERSION:0:2}
export URL_VERSION=${VERSION/_/%2B}
export FILE_VERSION=${VERSION/_/+}

echo "Download OpenJDK Temurin ${VERSION}"
curl -L "https://github.com/adoptium/temurin${MAIN_VERSION}-binaries/releases/download/jdk-${URL_VERSION}/OpenJDK${MAIN_VERSION}U-jdk_x64_linux_hotspot_${VERSION}.tar.gz" -o OpenJDK.tar.gz
tar -xf OpenJDK.tar.gz
mv jdk-${FILE_VERSION} ~/jdk-temurin-${FILE_VERSION}
ln -s ~/jdk-temurin-${FILE_VERSION}/bin/java ~/.local/bin
ln -s ~/jdk-temurin-${FILE_VERSION}/bin/javac ~/.local/bin
ln -s ~/jdk-temurin-${FILE_VERSION}/bin/jconsole ~/.local/bin
rm OpenJDK.tar.gz

echo "Done"

