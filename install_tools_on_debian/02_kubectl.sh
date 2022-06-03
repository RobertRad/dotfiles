#!/bin/sh
export KUBECTL_VERSION="v1.21.12"
export KUBE_TOOLS_VERSION="v0.9.4"

echo "Download kubectl"
curl -k -LO "https://dl.k8s.io/release/${KUBECTL_VERSION}/bin/linux/amd64/kubectl"
chmod +x kubectl
mv ./kubectl ~/.local/bin

echo "Download kubectx"
curl -LO "https://github.com/ahmetb/kubectx/releases/download/${KUBE_TOOLS_VERSION}/kubectx"
chmod +x kubectx
mv ./kubectx ~/.local/bin

echo "Download kubens"
curl -LO "https://github.com/ahmetb/kubectx/releases/download/${KUBE_TOOLS_VERSION}/kubens"
chmod +x kubens
mv ./kubens ~/.local/bin

echo "Done - All placed in ~/.local/bin"
ls ~/.local/bin
