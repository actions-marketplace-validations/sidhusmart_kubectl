#!/bin/sh

set -e

# Export the KUBECONFIG directly from the provided input value
export KUBECONFIG="$KUBE_CONFIG_DATA"

sh -c "kubectl${KUBECTL_VERSION:+.${KUBECTL_VERSION}} $*"
