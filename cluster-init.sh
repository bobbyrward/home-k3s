#!/bin/bash
set -e

./scripts/system-prep.sh
./.get-k3s server --cluster-init

