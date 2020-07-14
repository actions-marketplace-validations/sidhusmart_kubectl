#!/bin/sh

set -e

# Provide the KUBECONFIG directly from the argument
KUBECONFIG=${KUBE_CONFIG_DATA}
export KUBECONFIG

sh -c "kubectl${KUBECTL_VERSION:+.${KUBECTL_VERSION}} $*"
