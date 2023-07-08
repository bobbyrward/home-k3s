#!/bin/bash
set -e

if [ $# -eq 0 ]; then
  echo "Error: Must supply initial cluster hostname" >&2
  exit 1
fi

INITIAL_CLUSTER_HOST=$1

./scripts/system-prep.sh
./.get-k3s server --server https://${INITIAL_CLUSTER_HOST}:6443
