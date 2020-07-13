#!/bin/sh

set -e

# Do not try to decode the KUBE_CONFIG_DATA and write this to the KUBECONFIG
echo "$KUBE_CONFIG_DATA" > /tmp/config
export KUBECONFIG=/tmp/config

sh -c "kubectl${KUBECTL_VERSION:+.${KUBECTL_VERSION}} $*"
