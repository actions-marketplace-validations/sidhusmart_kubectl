#!/bin/sh

set -e

# Provide the KUBECONFIG directly from the argument
export KUBECONFIG = ${KUBE_CONFIG_DATA}

sh -c "kubectl${KUBECTL_VERSION:+.${KUBECTL_VERSION}} $*"
