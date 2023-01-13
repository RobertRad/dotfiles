#!/bin/bash
export VERSION="17.0.5_8"
export OPENJ9_VERSION="0.35.0"

export MAIN_VERSION=${VERSION:0:2}
export URL_VERSION=${VERSION/_/%2B}
export FILE_VERSION=${VERSION/_/+}

echo "Download OpenJDK Semeru ${VERSION}"
curl -L "https://github.com/ibmruntimes/semeru${MAIN_VERSION}-binaries/releases/download/jdk-${URL_VERSION}_openj9-${OPENJ9_VERSION}/ibm-semeru-open-jdk_x64_linux_${VERSION}_openj9-${OPENJ9_VERSION}.tar.gz" -o OpenJDK.tar.gz
tar -xf OpenJDK.tar.gz
mv jdk-${FILE_VERSION} ~/jdk-semeru-${FILE_VERSION}
ln -s ~/jdk-semeru-${FILE_VERSION}/bin/java ~/.local/bin
ln -s ~/jdk-semeru-${FILE_VERSION}/bin/javac ~/.local/bin
ln -s ~/jdk-semeru-${FILE_VERSION}/bin/jconsole ~/.local/bin
rm OpenJDK.tar.gz

echo "Done"

