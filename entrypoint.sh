#!/bin/sh

set -e

# Extract the base64 encoded config data and write this to the KUBECONFIG
if [ "$UNCODED" ]
then
    export KUBECONFIG = "$KUBE_CONFIG_DATA"
else
    echo "$KUBE_CONFIG_DATA" | base64 --decode > /tmp/config
    export KUBECONFIG=/tmp/config
fi

sh -c "kubectl${KUBECTL_VERSION:+.${KUBECTL_VERSION}} $*"
